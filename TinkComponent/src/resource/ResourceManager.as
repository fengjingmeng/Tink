package resource
{
	public class ResourceManager
	{
		private static var _instance:ResourceManager;
		private var _model:ResourceModel;
		
		public function ResourceManager()
		{
			_model = new ResourceModel();
		}
		
		public static function get instance():ResourceManager
		{
			if(!_instance)
			{
				_instance = new ResourceManager();
			}
			return _instance;
		}
		
		public function get model():ResourceModel
		{
			return _model;
		}
		
		public function loaderUIModule(moduleName:String):void
		{
			if(!model.getXMLResourceByModuleName(moduleName))
			{
//				var xml:String = moduleName + "xml";
//				var loader:xmll
			}
		}
	}
}