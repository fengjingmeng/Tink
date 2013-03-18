package Loaders
{
	import flash.display.Loader;
	
	public class BaseLoader extends Loader
	{
		private var _url:String;
		
		public function BaseLoader(url:String)
		{
			super();
			_url = url;
		}
		
		public function get url():String
		{
			return _url;
		}
	}
}