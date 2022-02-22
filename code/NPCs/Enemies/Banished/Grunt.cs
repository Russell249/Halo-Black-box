using Sandbox;
using System.Linq;

[Library("grunt", Title = "Grunt", Spawnable = true)]
partial class Grunt : NpcBase 
{
	// float Speed;

	[ServerCmd("spawn_grunt")]
	private static void SpawnEntity() 
	{
		foreach (var ply in Entity.All.OfType<HBB.HBBPlayer>().ToArray()) 
		{
			var startPos = ply.EyePosition;
			var dir = ply.EyeRotation.Forward;
			var tr = Trace.Ray(startPos, startPos + dir * 5000)
						.Ignore(ply)
						.Run();

			var npc = new Grunt 
			{
				Position = tr.EndPos,
				Rotation = Rotation.LookAt(ply.EyeRotation.Backward.WithZ(0))
			};
		}
	}

	public override void Spawn()
	{
		base.Spawn();

		SetModel("models/npc/enemies/banished/grunt/grunt.vmdl");
		EyePosition = Position + Vector3.Up * 64;
		CollisionGroup = CollisionGroup.Player;
		SetupPhysicsFromCapsule(PhysicsMotionType.Keyframed, Capsule.FromHeightAndRadius(48, 5));

		EnableHitboxes = true;

		if (Rand.Int(3) == 1) 
		{
			SetBodyGroup("Backpack", 1);
		}

		if (Rand.Int(3) == 2) 
		{
			SetBodyGroup("Backpack", 2);
		}

		if (Rand.Int(3) == 1) 
		{
			SetBodyGroup("Helmet", 1);
		}

		if (Rand.Int(3) == 2) 
		{
			SetBodyGroup("Helmet", 2);
		}

		Health = 25;

		Steer = new Sandbox.Nav.Wander();
	}

	public override void TakeDamage( DamageInfo info )
	{
		base.TakeDamage( info );

		CurrentState = State.Scared;
	}

	public override void OnKilled()
	{
		PlaySound("grunt.death");

		base.OnKilled();
	}

	public override void Tick() 
	{
		if (CurrentState == State.Wander) 
		{
			if (Rand.Int(200) == 1)
				PlaySound("grunt.talk");
		}

		if (CurrentState == State.Chase) 
		{
			if (Rand.Int(10) == 1) 
			{
				if (!target.IsValid()) FindTarget();
				if (target.Health <= 0) FindTarget();
				Steer = new NavSteer();
				Steer.Target = target.Position;
			}

			if (TimeUntilAttack <= 0) 
			{
				if (!target.IsValid()) FindTarget();
				if (target.Health <= 0) FindTarget();

				if (Rand.Int(3) == 1 && Vector3.DistanceBetween(Position, target.Position) < 100) 
				{
					Steer = new NavSteer();
					Steer.Target = target.Position;
				}

				if (Rand.Int(3) == 1 && Vector3.DistanceBetween(Position, target.Position) < 80) 
				{
					// Attack stuff
					TimeUntilAttack = 60;
				}
			}

			else 
			{
				TimeUntilAttack -= 1;
			}
		}

		if (CurrentState == State.Scared) 
		{
			Steer = new Sandbox.Nav.Wander();

			Speed = 300f;
		}

		base.Tick();
	}
}
