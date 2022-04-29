using Sandbox;
using Sandbox.UI;
using Sandbox.UI.Construct;

namespace HBB.UI 
{
	public partial class ShieldShower : Panel 
	{
		private Label ShieldText;

		public ShieldShower() 
		{
			StyleSheet.Load("/ui/ShieldShower.scss");
			Panel shieldBackground = Add.Panel();
			shieldBackground.Add.Label("Shield ", "ShieldTextName");
			ShieldText = Add.Label("100", "ShieldText");
		}

		public override void Tick()
		{
			base.Tick();
			AddClass("Hidden");
			if ( Local.Pawn is not HBBPlayer player )
				return;

			if (player.LifeState != LifeState.Alive)
				return;

			RemoveClass("Hidden");
			ShieldText.Text = player.Shield.CeilToInt().ToString();

			if (player.Health.CeilToInt() < 100)
				Style.FontColor = "#FF0000";
		}
	}
}
