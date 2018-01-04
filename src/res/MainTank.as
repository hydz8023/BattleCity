package res
{
	import flash.events.KeyboardEvent;
	
	import engine.Mgr;
	import engine.TankRes;

	public class MainTank extends Tank
	{
		private var IsMove:Boolean = false;
		//按键的ASCII码
		private var UP:uint = 87;
		private var DOWN:uint = 83;
		private var LEFT:uint = 65;
		private var RIGHT:uint = 68;
		
		public function MainTank()
		{
			super(TankRes.tank7);
			this.m_step = 2;
			
			Mgr.STAGEMgr.STAGE.addEventListener(KeyboardEvent.KEY_DOWN,keyDownHandler);
			Mgr.STAGEMgr.STAGE.stage.addEventListener(KeyboardEvent.KEY_UP,keyUpHandler);
		}
		
		private function keyDownHandler(event:KeyboardEvent ):void
		{
			if	   ( event.keyCode == UP    )
				this.MoveUp();
			else if( event.keyCode == DOWN  )
				this.MoveDown();
			else if( event.keyCode == LEFT  )
				this.MoveLeft();
			else if( event.keyCode == RIGHT )
				this.MoveRight();
		}
		
		private function keyUpHandler(event:KeyboardEvent ):void
		{
			this.Display();
		}
		
		
		
	}
}