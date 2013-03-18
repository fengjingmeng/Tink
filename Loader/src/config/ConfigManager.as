package config
{
	public class ConfigManager
	{
		public var XML_PATH:String = "";
		public var SWF_PATH:String = "";
		
		private static var _instance:ConfigManager;
		
		public function ConfigManager()
		{
			
		}
		
		public static function get instance():ConfigManager
		{
			if(!_instance)
			{
				_instance = new ConfigManager();
			}
			return _instance;
		}
	}
}