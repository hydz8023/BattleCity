package
{
	import flash.display.Sprite;
	import flash.events.EventDispatcher;
	
	import engine.Mgr;
	
	import res.MainTank;
	import res.MapID;
	
	public class BattleCity extends Sprite
	{
		private var dis:EventDispatcher = new EventDispatcher();
		public function BattleCity()
		{
			init();
			test();
		}
		
		//初始化
		private function init():void
		{
			this.stage.color = 0;
			Mgr.STAGEMgr.STAGE = this.stage;
		}
		
		//测试
		private function test():void
		{
			var map:MapID = new MapID();
			var id:Array = map.Level_1();
			var newID:Array = new Array();
			var tank:MainTank = new MainTank();
			this.addChild( tank );
		}
		
	}
}