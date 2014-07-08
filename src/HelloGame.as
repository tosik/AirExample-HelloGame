package
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	
	import views.AimingLogo;
	
	public class HelloGame extends Sprite
	{
		[Embed(source="assets/background.png")]
		private var BackgroundImage:Class;

		public function HelloGame()
		{
			var background:Bitmap = new BackgroundImage;
			addChild(background);
			background.width = stage.fullScreenWidth * 1.05;
			background.height = stage.fullScreenHeight * 1.05;
			background.y = -230;
			
			for (var i:int = 0 ; i < 20 ; i ++)
			{
				var logo:AimingLogo = new AimingLogo;
				logo.x = 150;
				logo.y = 200;
				addChild(logo);
			}
		}
	}
}