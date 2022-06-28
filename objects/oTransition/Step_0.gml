/// @description Progress the transistion

if (mode != TRANS_MODE.OFF)
{
	
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0,percent-max((percent/percentspd),0.005));
	}
	else
	{
		percent = min(1.2,percent+max(((1.2-percent)/percentspd),0.005));
	}
	
	if(percent == 1.2) or (percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.PREVIOUS:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_previous();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
			case TRANS_MODE.QUIT:
			{
				game_end();
				break;
			}
		}
	}
}