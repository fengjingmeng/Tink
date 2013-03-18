package Loaders
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	public class BaseLoader extends Loader
	{
		protected var _url:String;
		protected var _progress:Number;
		protected var _urlRoader:URLLoader;
		protected var _urlRequest:URLRequest;
		
		protected var _loading:Boolean = false;
		protected var _complete:Boolean = false;
		
		public function BaseLoader(url:String)
		{
			super();
			_url = url;
			_urlRoader = new URLLoader();
			_urlRequest = new URLRequest(_url);
			initEvent();
		}
		
		public function startLoad():void
		{
			_loading = true;
			_progress = 1;
			_urlRoader.load(_urlRequest);
			trace("start load " + _urlRequest.url + "--------------------------------");
		}
		
		public function get url():String
		{
			return _url;
		}
		
		public function get loading():Boolean
		{
			return _loading;
		}
		
		public function get data():*
		{
			return _urlRoader.data;
		}
		
		public function get complete():Boolean
		{
			return _complete;
		}
		
		public function get progress():Number
		{
			return _progress;
		}
		
		protected function initEvent():void
		{
			_urlRoader.addEventListener(Event.COMPLETE,__loaderComplete);
			_urlRoader.addEventListener(ProgressEvent.PROGRESS,__loaderProgress);
		}
		
		protected function __loaderComplete(event:Event):void
		{
			_loading = false;
			_complete = true;
			dispatchEvent(new LoaderEvents(LoaderEvents.COMPLETE))
			removeEvent();
		}
		
		protected function __loaderProgress(event:ProgressEvent):void
		{
			_progress = event.bytesLoaded/event.bytesTotal;
			dispatchEvent(new LoaderEvents(LoaderEvents.PROGRESS))
		}
		
		protected function removeEvent():void
		{
			_urlRoader.removeEventListener(Event.COMPLETE,__loaderComplete);
			_urlRoader.removeEventListener(ProgressEvent.PROGRESS,__loaderProgress);
		}
		
		protected function dispose():void
		{
			_urlRoader = null;
			_urlRequest = null;
		}
	}
}