/// @desc SlideTrasition(mode, targetroom)
/// @arg Mode sets transition mode between next, restart and goto.
/// @arg Target sets target room when using the goto mode.
function SlideTransistion() {

	with (oTransition)
	{
		flash = false;
		flashscreen = false;
		mode = argument[0];
		if (argument_count > 1) target = argument[1];
		else
		{
			switch(mode)
			{
				case TRANS_MODE.NEXT:
				{
					target = room+1;
					break;
				}
				case TRANS_MODE.PREVIOUS:
				{
					target = room-1;
					break;
				}
				case TRANS_MODE.RESTART:
				{
					target = rInt;
					break;
				}
				default:
				{
					target = room;
					break;
				}
			}
		}
	}


}
