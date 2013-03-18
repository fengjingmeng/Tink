package
{
	import flash.display.Sprite;
	
	public class LoaderTest extends Sprite
	{
		public function LoaderTest()
		{
			setup();
		}
		
		private function setup():void
		{
			LoaderManager.instance.createLoader(createConfigPath(),LoaderType.XML);
		}
		
		private function createConfigPath():String
		{
			var path:String = "config.xml";
		}
	}
}