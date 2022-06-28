/// @description Progress the transistion

if (mode != TRANS_MODE.OFF)
{
	
	switch(target)
	{
		default:
		{
			percentspd = 10;
			break;
		}
		case rTitle:
		{
			percentspd = 100;
			break;
		}
	}
	
	if(room == rInt) percentspd = 200;
	
	if (mode == TRANS_MODE.INTRO) or quitmode
	{
		percent = max(0,percent-max((percent/percentspd),0.005));
		
		if(quitmode)
		{
			window_set_size(winw*min(1,percent),winh*min(1,percent));
			
			window_set_position(winx-window_get_width()/2,winy-window_get_height()/2)
			
			if(percent == 0)
			{
				game_end();
			}
		}
	}
	else
	{
		percent = min(1.2,percent+max(((1.2-percent)/percentspd),0.005));
	} 
	
	var dir = point_direction(iconxstart,iconystart,xx,yy);
	iconx = Approch(iconx,xx,abs(lengthdir_x(50,dir)));
	icony = Approch(icony,yy,abs(lengthdir_y(50,dir)));
	
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
				if(flash)
				{
					if(!quitmode)
					{
						window_set_fullscreen(false);
						winw = window_get_width();
						winh = window_get_height();
						winx = window_get_x()+window_get_width()/2;
						winy = window_get_y()+window_get_height()/2;
						quitmode = true;
					}
				}
				else
				{
					game_end();
				}
				break;
			}
		}
	}
}