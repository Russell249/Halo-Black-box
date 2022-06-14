using Sandbox;
using System.Linq;

namespace HBB 
{
	[Library("grunt", Title = "Grunt")]
	partial class Grunt : NpcBase 
	{
		// float Speed;

		public HBBPlayer TargetPlayer;

		private TimeSince TimeSinceFoundPlayer;

		public float AngerRange = 96;

		[ConCmd.Client("spawn_grunt")]
		private static void SpawnEntity() 
		{
			foreach (var ply in Entity.All.OfType<HBBPlayer>().ToArray()) 
			{
				var startPos = ply.EyePosition;
				var dir = ply.EyeRotation.Forward;
				var tr = Trace.Ray(startPos, startPos + dir * 5000)
							.Ignore(ply)
							.Run();

				var npc = new Grunt 
				{
					Position = tr.EndPosition,
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

			Steer = new Wander();
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
			var isPlayerInSphere = FindInSphere(Position, AngerRange);

			foreach (var entity in isPlayerInSphere) 
			{
				if (entity is HBBPlayer player) 
				{
					Steer = new NavSteer();
					TargetPlayer = player;
					TimeSinceFoundPlayer = 0;
					Speed = 150f;
				}
			}

			DebugOverlay.Sphere(Position, AngerRange, Color.Red, 0, true);

			if (TimeSinceFoundPlayer >= 50) 
			{
				TargetPlayer = null;
				Steer = new Wander();
			}
			else if (TimeSinceFoundPlayer < 50)
			{
				Steer.Target = TargetPlayer.Position;
			}

			base.Tick();
		}
	}
}
