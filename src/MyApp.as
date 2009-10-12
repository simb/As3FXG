package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import shapes.Arrow;
	
	public class MyApp extends Sprite
	{
		private var s:Arrow;
		public function MyApp()
		{
			super();
			init();
		}
		public function init():void{
			s = new Arrow();
			s.x = 100;
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			addChild(s);
			addChild(new Arrow());
		}
		
		private function onEnterFrame(event:Event):void 
		{
			s.rotation += 5;
		}
	}
}