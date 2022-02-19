using Sandbox;
using System.Linq;
partial class NpcBase 
{
	static EntityLimit RagdollLimit = new EntityLimit {MaxTotal = 20};

	[ClientRpc]
	public void BecomeRagdollOnClient(Vector3 velocity, DamageFlags damageFlags, Vector3 forcePos, Vector3 force, int bone) 
	{
		var ent = new ModelEntity();
		ent.Position = Position;
		ent.Rotation = Rotation;
		ent.Scale = Scale;
		ent.MoveType = MoveType.Physics;
		ent.CopyBodyGroups(this);
		// ent.CopyBonesFrom(this);
		ent.CopyMaterialGroup(this);
		ent.TakeDecalsFrom(this);
		ent.UsePhysicsCollision = true;
		ent.EnableAllCollisions = true;
		ent.SurroundingBoundsMode = SurroundingBoundsType.Physics;
		ent.RenderColor = RenderColor;
		// ent.PhysicsGroup.Velocity = velocity;
		ent.SetInteractsAs( CollisionLayer.Debris );
		ent.SetInteractsWith( CollisionLayer.WORLD_GEOMETRY );
		ent.SetInteractsExclude( CollisionLayer.Player | CollisionLayer.Debris );

		if (damageFlags.HasFlag(DamageFlags.Bullet) || damageFlags.HasFlag(DamageFlags.PhysicsImpact)) 
		{
			PhysicsBody body = bone > 0 ? ent.GetBonePhysicsBody(bone) : null;

			if (body != null) 
			{
				body.ApplyImpulseAt(forcePos, force * body.Mass);
			}
			else 
			{
				ent.PhysicsGroup.ApplyImpulse(force);
			}
		}
		
		if (damageFlags.HasFlag(DamageFlags.Blast)) 
		{
			if (ent.PhysicsGroup != null) 
			{
				ent.PhysicsGroup.AddVelocity((Position - (forcePos + Vector3.Down * 100.0f)).Normal * (force.Length * 0.2f));
				var angularDir = (Rotation.FromYaw(90) * force.WithZ(0).Normal).Normal;
				ent.PhysicsGroup.AddAngularVelocity(angularDir * (force.Length * 0.02f));
			}
		}

		ent.SetModel( GetModelName() );
		ent.CopyBonesFrom( this );
		ent.TakeDecalsFrom( this );
		ent.SetRagdollVelocityFrom( this );
		// ent.DeleteAsync( 20.0f );

		ent.RenderColor = RenderColor;

		foreach (var ply in Entity.All.OfType<Player>()) 
		{
			if (Vector3.DistanceBetween(ply.Position, Position) > 4500)
				ent.Delete();
		}

		// RagdollLimit.Watch(ent);
	}
}
