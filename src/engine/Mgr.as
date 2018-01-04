package engine
{
	public class Mgr
	{
		public static function get STAGEMgr():StageMgr
		{
			return StageMgr.ins;
		}
	}
}