package
{
	import flash.events.Event;
	
	/**
	 *loader 事件 
	 * @author tian.huang
	 * 
	 */	
	public class LoaderEvents extends Event
	{
		public static const COMPLETE:String = "complete";
		public static const PROGRESS:String = "progress";
		
		public function LoaderEvents(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}