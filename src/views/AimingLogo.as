package views
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class AimingLogo extends Sprite
	{
		[Embed(source="../assets/logo_aiming.png")]
		private var Image:Class;
		
		private var directionX:Number;
		private var directionY:Number;
		
		public function AimingLogo()
		{
			addChild(new Image);
			
			directionX = Math.random() * 4 - 2;
			directionY = Math.random() * 4 - 2;
			
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		protected function onEnterFrame(event:Event):void
		{
			this.x += directionX;
			this.y += directionY;
		}

		protected function onClick(event:MouseEvent):void
		{
			parent.removeChild(this);
		}
	}
}