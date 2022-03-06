using Sandbox;

partial class NoVrTestWeapon : NoVrBaseWeapon 
{
	public override void Spawn() 
	{
		base.Spawn();
	}

	public override void Simulate( Client owner )
	{
		base.Simulate( owner );
	}

	public override void AttackPrimary()
	{
		base.AttackPrimary();

		ShootBullet(0.25f, 1f, 10f, 0.1f);
	}

	public override void AttackSecondary()
	{
		HBBOwner.Health -= 1;
	}
}
