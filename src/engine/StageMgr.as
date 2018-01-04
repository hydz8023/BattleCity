package engine
{
	import flash.display.Stage;

	public class StageMgr
	{
		private static var _ins:StageMgr
		
		public static function get ins():StageMgr
		{
			if( _ins == null )
				_ins = new StageMgr();
			return _ins;
		}
		
		private var _STAGE:Stage;
		
		
		public function get STAGE():Stage
		{
			return _STAGE;
		}
		
		public function set STAGE(value:Stage):void
		{
			_STAGE = value;
		}
	}
}