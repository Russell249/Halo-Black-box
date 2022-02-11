using Sandbox;
using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Collections.Generic;

[Library("grunt", Title = "Grunt", Spawnable = true)]
partial class Grunt : NpcBase 
{
	public override void Spawn()
	{
		base.Spawn();

		SetModel("models/npc/enemies/banished/grunt/grunt.vmdl");
		EyePos = Position + Vector3.Up * 64;
		CollisionGroup = CollisionGroup.Player;
		SetupPhysicsFromCapsule(PhysicsMotionType.Keyframed, Capsule.FromHeightAndRadius(72, 2));

		EnableHitboxes = true;

		if (Rand.Int(3) == 1) 
		{
			this.SetBodyGroup("Backpack", 1);
		}

		if (Rand.Int(3) == 2) 
		{
			this.SetBodyGroup("Backpack", 2);
		}

		if (Rand.Int(3) == 1) 
		{
			this.SetBodyGroup("Helmet", 1);
		}

		if (Rand.Int(3) == 2) 
		{
			this.SetBodyGroup("Helmet", 2);
		}

		Health = 25;

		this.Steer = new Sandbox.Nav.Wander();
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
		}

		base.Tick();
	}
}
