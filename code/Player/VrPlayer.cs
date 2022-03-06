using Sandbox;

namespace HBB
{
	partial class HBBPlayer : Player
	{
		[Net, Local] public LeftHand LeftHand { get; set; }
		[Net, Local] public RightHand RightHand { get; set; }

		private TimeSince TimeSinceTookDamage;

		public HBBPlayer()
		{
			Inventory = new BaseInventory(this);
		}

		private void CreateHands()
		{
			DeleteHands();

			LeftHand = new() { Owner = this };
			RightHand = new() { Owner = this };

			LeftHand.Other = RightHand;
			RightHand.Other = LeftHand;
		}

		private void DeleteHands()
		{
			LeftHand?.Delete();
			RightHand?.Delete();
		}

		public override void Respawn()
		{
			// SetModel( "models/spartans/haloreachspartans.vmdl" );

			if ( Client.IsUsingVr )
			{
				Controller = new VrWalkController();
				Animator = new VrPlayerAnimator();
				CameraMode = new VrCamera();
			}
			else if (!Client.IsUsingVr)
			{
				Controller = new WalkController();
				Animator = new StandardPlayerAnimator();
				CameraMode = new FirstPersonCamera();
			}

			Health = 200f;

			Inventory.Add(new NoVrTestWeapon(), true);

			EnableAllCollisions = true;
			EnableDrawing = true;
			// EnableHideInFirstPerson = true;
			EnableShadowInFirstPerson = true;

			SetModel("models/spartans/spartanhands/spartan_hands.vmdl");

			CreateHands();

			// if ( Client.IsUsingVr )
			// 	SetBodyGroup( "Hands", 1 ); // Hide hands

			base.Respawn();
		}

		public override void ClientSpawn()
		{
			base.ClientSpawn();
		}

		public override void Simulate( Client cl )
		{
			base.Simulate( cl );
			SimulateActiveChild( cl, ActiveChild );

			CheckRotate();
			SetVrAnimProperties();

			// SetAnimParameterVector("")

			LeftHand?.Simulate( cl );
			RightHand?.Simulate( cl );
		}

		public override void FrameSimulate( Client cl )
		{
			base.FrameSimulate( cl );

			LeftHand?.FrameSimulate( cl );
			RightHand?.FrameSimulate( cl );
		}

		public override void TakeDamage( DamageInfo info )
		{
			base.TakeDamage( info );

			TimeSinceTookDamage = 0;

			if (Health <= 100f && TimeSinceTookDamage > 5f) 
			{
				for (float i = 0f; i < 200f; i++)
				{
					i = Health;
				}
			}
		}

		public void SetVrAnimProperties()
		{
			if ( LifeState != LifeState.Alive )
				return;

			if ( !Input.VR.IsActive )
				return;

			SetAnimParameter( "b_vr", true );
			var leftHandLocal = Transform.ToLocal( LeftHand.GetBoneTransform( 0 ) );
			var rightHandLocal = Transform.ToLocal( RightHand.GetBoneTransform( 0 ) );

			var handOffset = Vector3.Zero;
			SetAnimParameter( "left_hand_pos", RightHand.Position);
			SetAnimParameter( "right_hand_pos", RightHand.Position);
			// SetAnimParameter("right_arm_pos", Input.VR.Head.Position);

			SetAnimParameter( "left_hand_rot", leftHandLocal.Rotation * Rotation.From( 0, 0, 270 ) );
			SetAnimParameter( "right_hand_rot", rightHandLocal.Rotation );
			// SetAnimParameter("right_arm_rot", Input.VR.Head.Rotation);

			float height = Input.VR.Head.Position.z - Position.z;
			SetAnimParameter( "duck", 1.0f - ((height - 32f) / 32f) ); // This will probably need tweaking depending on height
		}

		private TimeSince timeSinceLastRotation;
		private void CheckRotate()
		{
			if ( !IsServer )
				return;

			const float deadzone = 0.2f;
			const float angle = 45f;
			const float delay = 0.25f;

			float rotate = Input.VR.RightHand.Joystick.Value.x;

			if ( timeSinceLastRotation > delay )
			{
				if ( rotate > deadzone )
				{
					Transform = Transform.RotateAround(
						Input.VR.Head.Position.WithZ( Position.z ),
						Rotation.FromAxis( Vector3.Up, -angle )
					);

					timeSinceLastRotation = 0;
				}
				else if ( rotate < -deadzone )
				{
					Transform = Transform.RotateAround(
						Input.VR.Head.Position.WithZ( Position.z ),
						Rotation.FromAxis( Vector3.Up, angle )
					);

					timeSinceLastRotation = 0;
				}
			}

			if ( rotate > -deadzone && rotate < deadzone )
			{
				timeSinceLastRotation = 10;
			}
		}

		public override void OnKilled()
		{
			base.OnKilled();
			EnableDrawing = false;
			DeleteHands();
		}
	}
}
