using Sandbox;

partial class NoVrBaseWeapon : BaseWeapon 
{
	public virtual int ClipSize => 16;
	public virtual float ReloadTime => 1.0f;

	[Net, Predicted]
	public int AmmoClip {get; set;}

	[Net, Predicted]
	public TimeSince TimeSinceReload {get; set;}

	[Net, Predicted]
	public bool IsReloading {get; set;}

	[Net, Predicted]
	public TimeSince TimeSinceDeployed {get; set;}

	public PickupTrigger PickupTrigger {get; protected set;}

	public HBB.HBBPlayer HBBOwner {get; set;}

	public int AvailableAmmo() 
	{
		var owner = Owner as HBB.HBBPlayer;
		if (owner == null) return 0;
		return 999;
	}

	public override void ActiveStart( Entity ent )
	{
		base.ActiveStart( ent );

		TimeSinceDeployed = 0;

		IsReloading = false;
	}

	public override void Spawn() 
	{
		base.Spawn();

		SetModel("weapons/rust_pistol/rust_pistol.vmdl");

		PickupTrigger = new PickupTrigger();
		PickupTrigger.Parent = this;
		PickupTrigger.Position = Position;

		HBBOwner = Owner as HBB.HBBPlayer;
	}

	public override void Reload() 
	{
		if (IsReloading)
			return;

		if (AmmoClip >= ClipSize)
			return;

		TimeSinceReload = 0;

		if (Owner is HBB.HBBPlayer player) 
		{
			if (AmmoClip <= 0)
				return;
		}

		IsReloading = true;

		// StartReloadEffects();
	}

	public override void Simulate(Client owner) 
	{
		if (TimeSinceDeployed < 0.6f)
			return;

		if (!IsReloading) 
		{
			base.Simulate(owner);
		}

		if (Input.Pressed(InputButton.Attack1)) 
		{
			AttackPrimary();
		}

		if (IsReloading && TimeSinceReload > ReloadTime) 
		{
			OnReloadFinish();
		}
	}

	public virtual void OnReloadFinish() 
	{
		IsReloading = false;

		if (Owner is HBB.HBBPlayer player) 
		{
			var ammo = AmmoClip;
			if (ammo == 0)
				return;

			AmmoClip += ammo;
		}
	}

	public override void AttackPrimary()
	{
		TimeSincePrimaryAttack = 0;
		TimeSinceSecondaryAttack = 0;

		foreach (var tr in TraceBullet(Owner.EyePosition, Owner.EyePosition + Owner.EyeRotation.Forward * 5000)) 
		{
			tr.Surface.DoBulletImpact(tr);

			if (!IsServer) continue;
			if (!tr.Entity.IsValid()) continue;

			using (Prediction.Off()) 
			{
				var damage = DamageInfo.FromBullet(tr.EndPosition, Owner.EyeRotation.Forward * 100, 15)
					.UsingTraceResult(tr)
					.WithAttacker(Owner)
					.WithWeapon(this);

				tr.Entity.TakeDamage(damage);
			}
		}
	}

	public virtual void ShootBullet(float spread, float force, float damage, float bulletSize) 
	{
		var forward = Owner.EyeRotation.Forward;
		forward += (Vector3.Random + Vector3.Random + Vector3.Random + Vector3.Random) * spread * 0.25f;
		forward = forward.Normal;

		foreach (var tr in TraceBullet(Owner.EyePosition, Owner.EyePosition + forward * 5000, bulletSize)) 
		{
			tr.Surface.DoBulletImpact(tr);

			if (!IsServer) continue;
			if (!tr.Entity.IsValid()) continue;

			using (Prediction.Off()) 
			{
				var damageInfo = DamageInfo.FromBullet(tr.EndPosition, forward * 100 * force, damage)
					.UsingTraceResult(tr)
					.WithAttacker(Owner)
					.WithWeapon(this);

				tr.Entity.TakeDamage(damageInfo);
			}
		}
	}

	public bool TakeAmmo(int amount) 
	{
		if (AmmoClip < amount)
			return false;

		AmmoClip -= amount;
		return true;
	}

	public bool IsUsable() 
	{
		if (AmmoClip > 0) return true;
		return AvailableAmmo() > 0;
	}

	public override void OnCarryStart( Entity carrier )
	{
		base.OnCarryStart( carrier );

		if (PickupTrigger.IsValid())
			PickupTrigger.EnableTouch = false;
	}
}
