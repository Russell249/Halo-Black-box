using Sandbox;

namespace HBB 
{
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
			if (Local.Pawn is not HBBPlayer player)
				return;

			if (player.LifeState != LifeState.Alive)
				return;

			var daminfo = DamageInfo.FromBullet(Vector3.Zero, Vector3.Zero, 1);

			player.TakeDamage(daminfo);
		}
	}
}
