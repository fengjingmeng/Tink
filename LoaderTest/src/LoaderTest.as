package
{
	import Loaders.XMLLoader;
	
	import flash.display.Sprite;
	
	public class LoaderTest extends Sprite
	{
		public function LoaderTest()
		{
			setup();
		}
		
		private function setup():void
		{
			var loader:XMLLoader = LoaderManager.instance.createLoader(createConfigPath(),LoaderType.XML);
			loader.startLoad();
		}
		
		private function createConfigPath():String
		{
			var path:String = "config.xml";
			return path;
		}
	}
}