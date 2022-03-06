using Sandbox;
using HBB.UI;

namespace HBB
{
	public partial class HBBGame : Game
	{
		public HBBGame()
		{
			if ( IsClient )
			{
				_ = new HBBHud();
			}
		}

		public override void ClientJoined( Client client )
		{
			base.ClientJoined( client );

			var player = new HBBPlayer();
			client.Pawn = player;

			player.Respawn();
		}
	}
}
