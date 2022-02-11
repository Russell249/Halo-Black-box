using Sandbox;
using System;
using System.Linq;

partial class NpcBase 
{
	static EntityLimit RagdollLimit = new EntityLimit {MaxTotal = 20};

	[ClientRpc]
	void BecomeRagdollOnClient() 
	{
		var ent = new ModelEntity();
		ent.Position = Position;
		ent.Rotation = Rotation;
		ent.MoveType = MoveType.Physics;
		ent.UsePhysicsCollision = true;
		ent.SetInteractsAs( CollisionLayer.Debris );
		ent.SetInteractsWith( CollisionLayer.WORLD_GEOMETRY );
		ent.SetInteractsExclude( CollisionLayer.Player | CollisionLayer.Debris );
	
	
		ent.SetModel( GetModelName() );
		ent.CopyBonesFrom( this );
		ent.TakeDecalsFrom( this );
		ent.SetRagdollVelocityFrom( this );
		ent.DeleteAsync( 20.0f );

		ent.RenderColor = RenderColor;

		RagdollLimit.Watch(ent);
	}
}
