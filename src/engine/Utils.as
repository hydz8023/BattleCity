package engine
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;

	/**
	 * 工具类
	 */
	public class Utils
	{
		private static var _loader:Loader;
		private static var _confun:Function;
		private static var _img:Sprite;
		private static var _width:int;
		private static var _height:int;
		
		/**
		 * 加载图片
		 */
		public static function LoadImg(url:String,img:Sprite,width:int = 0,height:int = 0):void
		{
			var _imgURL:URLRequest = new URLRequest();
			_imgURL.url = "res/img/" + url;
			
			_img = img;
			_img.removeChildren();
			_width = width;
			_height = height;
			
			_loader = new Loader;
			_loader.load( _imgURL );
			
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE,completeHandler);
		}
		private static function completeHandler(event:Event ):void
		{
			var bitmap:Bitmap = _loader.content as Bitmap;
			
			if ( _width != 0 )
				bitmap.width = _width;
			if ( _height != 0 )
				bitmap.height = _height;
			_img.addChild( bitmap );
		}
		
		private static function AddEffect():void
		{
			var eff:Sprite = new Sprite();
		}
		
	}
}