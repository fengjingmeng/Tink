package
{
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	import Loaders.BaseLoader;
	
	/**
	 *Loader  M 
	 * @author tian.huang
	 * 
	 */	
	public class LoaderModel extends EventDispatcher
	{
		private var _loaderSaveByPath:Dictionary;
		
		public function LoaderModel()
		{
			super();
			_loaderSaveByPath = new Dictionary();
		}
		
		public function getloaderByPath(url:String):BaseLoader
		{
			return _loaderSaveByPath[url];
		}
	}
}