using Sandbox;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

[Library("npc_base", Title = "Base NPC", Spawnable = false)]
public partial class NpcBase : AnimEntity 
{
	float Speed;

	NavPath Path = new NavPath();
	public NavSteer Steer;

	public override void Spawn()
	{
		base.Spawn();

		var npc = this;

		var wander = new Sandbox.Nav.Wander();
		wander.MinRadius = 500;
		wander.MaxRadius = 1500;
		npc.Steer = wander;

		SetModel("models/npc/enemies/banished/grunt/grunt.vmdl");
		EyePos = Position + Vector3.Up * 64;
		CollisionGroup = CollisionGroup.Player;
		SetupPhysicsFromCapsule(PhysicsMotionType.Keyframed, Capsule.FromHeightAndRadius(72, 8));

		EnableHitboxes = true;

		// this.SetMaterialGroup(Rand.Int)

		Speed = Rand.Float(100, 300);
	}

	Vector3 InputVelocity;
	Vector3 LookDir;

	[Event.Tick.Server]
	public void Tick() 
	{
		using var _a = Sandbox.Debug.Profile.Scope("NpcBase::Tick");

		InputVelocity = 0;

		if (Steer != null) 
		{
			using var _b = Sandbox.Debug.Profile.Scope("Steer");

			Steer.Tick(Position);

			if (!Steer.Output.Finished) 
			{
				InputVelocity = Steer.Output.Direction.Normal;
				Velocity = Velocity.AddClamped(InputVelocity * Time.Delta * 500, Speed);
			}
		}

		using (Sandbox.Debug.Profile.Scope("Move"))
		{
			Move(Time.Delta);
		}

		var walkVelocity = Velocity.WithZ(0);
		if (walkVelocity.Length > 0.5f) 
		{
			var turnSpeed = walkVelocity.Length.LerpInverse(0, 100, true);
			var targetRotation = Rotation.LookAt(walkVelocity.Normal, Vector3.Up);
			Rotation = Rotation.Lerp(Rotation, targetRotation, turnSpeed * Time.Delta * 20.0f);
		}

		var animHelper = new AnimationHelper(this);

		LookDir = Vector3.Lerp(LookDir, InputVelocity.WithZ(0) * 1000, Time.Delta * 100.0f);
		animHelper.WithLookAt(EyePos + LookDir);
		animHelper.WithVelocity(Velocity);
		animHelper.WithWishVelocity(InputVelocity);
	}

	protected virtual void Move(float timeDelta) 
	{
		var bbox = BBox.FromHeightAndRadius(64, 4);

		MoveHelper move = new(Position, Velocity);
		move.MaxStandableAngle = 50;
		move.Trace = move.Trace.Ignore(this).Size(bbox);

		if (!Velocity.IsNearlyZero(0.001f)) 
		{
			using (Sandbox.Debug.Profile.Scope("TryUnstuck"))
				move.TryUnstuck();

			using (Sandbox.Debug.Profile.Scope("TryMoveWithStep"))
				move.TryMoveWithStep(timeDelta, 30);
		}

		using (Sandbox.Debug.Profile.Scope("Ground Checks")) 
		{
			var tr = move.TraceDirection(Vector3.Down * 10.0f);

			if (move.IsFloor(tr)) 
			{
				GroundEntity = tr.Entity;

				if (!tr.StartedSolid) 
				{
					move.Position = tr.EndPos;
				}

				if (InputVelocity.Length > 0) 
				{
					var movement = move.Velocity.Dot(InputVelocity.Normal);
					move.Velocity = move.Velocity - movement * InputVelocity.Normal;
					move.ApplyFriction(tr.Surface.Friction * 10.0f, timeDelta);
					move.Velocity += movement * InputVelocity.Normal;
				}
				else 
				{
					move.ApplyFriction(tr.Surface.Friction * 10.0f, timeDelta);
				}
			}
			else 
			{
				GroundEntity = null;
				move.Velocity += Vector3.Down * 900 *timeDelta;
			}
		}

		Position = move.Position;
		Velocity = move.Velocity;
	}
}
