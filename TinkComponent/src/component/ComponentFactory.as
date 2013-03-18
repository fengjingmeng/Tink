package component
{

	/**
	 *工厂类 
	 * @author Demon-Tink
	 * 
	 */	
	public class ComponentFactory
	{
		private static var _instance:ComponentFactory;
		
		public function ComponentFactory()
		{
			
		}
		
		public static function get instance():ComponentFactory
		{
			if(!_instance)
			{
				_instance = new ComponentFactory();
			}
			return _instance;
		}
		
		public function create(stylename:String)
		{
			
		}
		
		public function createComponentByStylename(stylename:String):*
		{
			
		}
	}
}