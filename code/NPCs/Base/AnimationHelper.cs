using Sandbox;
using System;

public struct AnimationHelper
{
	AnimatedEntity Owner;

	TimeSince TimeSinceStopped = 0;

	public AnimationHelper(AnimatedEntity entity) 
	{
		Owner = entity;
	}

	// public void WithLookAt(Vector3 look) 
	// {
	// 	Owner.SetAnimLookAt("aim_head", look);
	// 	Owner.SetAnimLookAt("aim_body", look);
	// 	Owner.SetAnimParameter("aimat_weight", 0.1f);
	// }

	public void WithVelocity(Vector3 Velocity) 
	{
		var dir = Velocity;
		var forward = Owner.Rotation.Forward.Dot(dir);
		var sideward = Owner.Rotation.Right.Dot(dir);

		var angle = MathF.Atan2(sideward, forward).RadianToDegree().NormalizeDegrees();

		Owner.SetAnimParameter("move_speed", Velocity.Length);
		Owner.SetAnimParameter("move_y", sideward);
		Owner.SetAnimParameter("move_x", forward);
	}
}
