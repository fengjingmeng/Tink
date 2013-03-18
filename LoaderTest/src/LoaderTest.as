package
{
	import Loaders.XMLLoader;
	
	import config.ConfigManager;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class LoaderTest extends Sprite
	{
		public function LoaderTest()
		{
			addEventListener(Event.ADDED_TO_STAGE,__addToStage);
		}
		
		private function setup():void
		{
			var loader:XMLLoader = LoaderManager.instance.createLoader(createConfigPath(),LoaderType.XML);
			loader.addEventListener(LoaderEvents.COMPLETE,__complete);
			loader.addEventListener(LoaderEvents.PROGRESS,__progress);
			
			stage.addEventListener(Event.ENTER_FRAME,__enterFrame);
		}
		
		private function __complete(event:LoaderEvents):void
		{
			var loader:XMLLoader = event.target as XMLLoader;
			var content:XML = new XML(loader.data);
			var xmllist:XMLList = content..config;
			if(xmllist.length() > 0)
			{
				ConfigManager.instance.XML_PATH = xmllist[0].XML_PATH.value;
				ConfigManager.instance.SWF_PATH = xmllist[0].SWF_PATH.value;
			}
		}
		
		private function __progress(event:LoaderEvents):void
		{
			var loader:XMLLoader = event.target as XMLLoader;
			trace(loader.url + "----progress----" + loader.progress);
		}
		
		private function __enterFrame(event:Event):void
		{
			LoaderManager.instance.execute();
		}
		
		private function __addToStage(event:Event):void
		{
			setup();
		}
		
		private function createConfigPath():String
		{
			var path:String = "config.xml";
			return path;
		}
	}
}