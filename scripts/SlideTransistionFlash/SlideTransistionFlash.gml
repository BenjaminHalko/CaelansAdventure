/// @desc SlideTrasitionFlash(mode, targetroom)
/// @arg Mode sets transition mode between next, restart and goto.
/// @arg xx
/// @arg yy
/// @arg Target sets target room when using the goto mode.

with (oTransition)
{
	flash = true;
	flashscreen = false;
	mode = argument[0];
	xx = argument[1];
	yy = argument[2];
	if (argument_count > 3) target = argument[3];
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