package res
{
	import flash.display.Loader;
	import flash.display.Sprite;
	
	import engine.Utils;

	public class Tank extends Sprite
	{
		protected var m_step:int;
		
		private var IsMove:Boolean ;
		private var loader:Loader;
		private var _url:String;
		private var _width:int = 30;
		private var _height:int = 30;
		
		private var _resUp:String = "U.gif";
		private var _resDown:String = "D.gif";
		private var _resLeft:String = "L.gif";
		private var _resRight:String = "R.gif";
		private var _curRes:String;
		
		private var tankModel:Sprite;
		
		public function Tank(url:String)
		{
			m_step = 1;
			IsMove = false;
			
			//加载坦克背景图片
			_url = url;
			tankModel = new Sprite();
			_curRes = _resDown;
			Utils.LoadImg( _url + _curRes ,tankModel ,_width ,_height );
			this.addChild( tankModel );
		}
		
		internal function Display():void
		{
			
		}
		
		internal function Move():void
		{
			
		}
		
		internal function MoveUp():void
		{
			if( _curRes != _resUp)
			{
				_curRes = _resUp;
				Utils.LoadImg( _url +_curRes ,tankModel ,_width ,_height );
			}
			this.y -= m_step;
		}
		
		internal function MoveDown():void
		{
			if( _curRes != _resDown)
			{
				_curRes = _resDown;
				Utils.LoadImg( _url + _curRes ,tankModel ,_width ,_height );
			}
			this.y += m_step;
		}
		
		internal function MoveLeft():void
		{
			if( _curRes != _resLeft)
			{
				_curRes = _resLeft;
				Utils.LoadImg( _url + _curRes ,tankModel ,_width ,_height );
			}
			this.x -= m_step ;
		}
		
		internal function MoveRight():void
		{
			if( _curRes != _resRight)
			{
				_curRes = _resRight;
				Utils.LoadImg( _url + _curRes ,tankModel ,_width ,_height );
			}
			this.x += m_step;	
		}
		
		
		
		
		
		
		
	}
}