package
{
	import Loaders.BaseLoader;
	import Loaders.XMLLoader;

	/**
	 *Loader C 
	 * @author tian.huang
	 * 
	 */	
	public class LoaderManager
	{
		private static var _instance:LoaderManager;
		private var _model:LoaderModel;
		
		public function LoaderManager()
		{
			_model = new LoaderModel();
		}
		
		public function createLoader(path:String,type:int):void
		{
			var loader:BaseLoader;
			loader = model.getloaderByPath(path);
			if(!loader)
			{
				loader = createLoaderByType(type);
			}
			model.getloaderByPath(loader.url) = loader;
		}
		
		private function createLoaderByType(type:int):BaseLoader
		{
			var loader:BaseLoader;
			switch(type)
			{
				case LoaderType.XML:
				{
					loader = new XMLLoader();
					break;
				}
					
				default:
				{
					loader = new BaseLoader();
					break;
				}
			}
			return loader;
		}
		
		public function setup():void
		{
			
		}
		
		public function get model():LoaderModel
		{
			return _model;
		}
		
		public static function get instance():LoaderManager
		{
			if(!_instance)
			{
				_instance = new LoaderManager();
			}
			return _instance;
		}
	}
}