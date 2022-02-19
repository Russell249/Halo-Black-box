using Sandbox;
using Sandbox.UI;

[Library]
public partial class HBBHud : HudEntity<RootPanel> 
{
	public static HBBHud Instance {get; set;}

	public HBBHud() 
	{
		Instance = this;
		if ( Global.IsRunningInVR )
		{
			// Use a world panel - we're in VR
			_ = new HBB.VrHudEntity();
		}
		else CreateRootPanel();
	}

	public override void CreateRootPanel()
	{
		RootPanel?.Delete();

		base.CreateRootPanel();
		CreateHUDElements();
	}

	public void CreateHUDElements() 
	{
		// RootPanel.AddChild<HealthBar>();
	}
}
