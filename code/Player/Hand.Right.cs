using Sandbox;

namespace HBB
{
	public class RightHand : BaseHand
	{
		protected override string ModelPath => "models/spartans/spartanhands/spartan_hand_right.vmdl";
		public override Input.VrHand InputHand => Input.VR.RightHand;

		public override void Spawn()
		{
			base.Spawn();
			Log.Info( "VR Controller Right Spawned" );
			SetInteractsAs( CollisionLayer.RIGHT_HAND );
			// SetAnimVector("right_hand_ik_pos", Position);
			// SetAnimRotation("right_hand_ik_rot", Rotation);
			// SetAnimRotation("right_arm_ik_rot", Input.VR.Head.Rotation);
		}
	}
}
