/// @desc 
if(percent < 1)
{
	percent = min(1,percent+max(((1-percent)/10),0.005));
}
else if(selected)
{
	Inputs();
	
	if(key_back) SlideTransistion(TRANS_MODE.GOTO,rOptions);
	
	if(key_up_pressed)
	{
		if(pos == 0)
		{
			if(global.unlockedinfintejump)
			pos = array_length_1d(text)-1; 
			else if(global.gamepadconnected)
			pos = array_length_1d(text)-2;
			else
			pos = array_length_1d(text)-3;
		}
		else
		{
			pos -= 1;
			if(pos == 3) and (!global.gamepadconnected)
			{
				pos -= 1;
			}
		}
	}

	if(key_down_pressed)
	{
		if((pos == array_length_1d(text)-1) and (global.unlockedinfintejump)) or ((pos == array_length_1d(text)-2) and (!global.unlockedinfintejump))
		{
			pos = 0;
		}
		else 
		{
			pos += 1;
			if(pos == 3) and (!global.gamepadconnected)
			{
				if(!global.unlockedinfintejump)
				{
					pos = 0;
				}
				else
				{
					pos += 1;
				}
			}
		}
	}
	
	if(!global.gamepadconnected) and (pos == 3)
	{
		pos = 2;
	}
	
	if(key_enter)
	{
		switch(pos)
		{
			case 0: default:
			{
				SlideTransistion(TRANS_MODE.GOTO,rOptions);
				break;
			}
			case 1:
			{
				SlideTransistion(TRANS_MODE.GOTO,rControls);
				room_persistent = true;
				break;
			}
			case 2:
			{
				global.autojump = !global.autojump;
				Save("Settings","Autojump",global.autojump);
				break;
			}
			case 3:
			{
				global.rumble = !global.rumble;
				Save("Settings","Rumble",global.rumble);
				break;
			}
			case 4:
			{
				global.infintejump = !global.infintejump;
				Save("Settings","InfiniteJump",global.infintejump);
				break;
			}
		}
	}
}