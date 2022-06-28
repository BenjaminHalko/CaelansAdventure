/// @desc 
if(percent < 1)
{
	percent = min(1,percent+max(((1-percent)/10),0.005));
}
else if(selected)
{
	Inputs();
	
	if(key_back) SlideTransistion(TRANS_MODE.GOTO,previousroom);
	
	if(key_up_pressed)
	{
		if(pos == 0)
		{
			pos = array_length_1d(text)-1;
		}
		else
		{
			pos -= 1;
		}
	}

	if(key_down_pressed)
	{
		if(pos == array_length_1d(text)-1)
		{
			pos = 0;
		}
		else 
		{
			pos += 1;
		}
	}
	
	if(key_enter)
	{
		switch(pos)
		{
			case 0: default:
			{
				SlideTransistion(TRANS_MODE.GOTO,previousroom);
				room_persistent = false;
				break;
			}
			case 1:
			{
				SlideTransistion(TRANS_MODE.GOTO,rOptionsSound);
				room_persistent = true;
				break;
			}
			case 2:
			{
				SlideTransistion(TRANS_MODE.GOTO,rOptionsDisplay);
				room_persistent = true;
				break;
			}
			case 3:
			{
				SlideTransistion(TRANS_MODE.GOTO,rOptionsGameplay);
				room_persistent = true;
				break;
			}
			case 4:
			{
				Save("Settings","User",!global.annaramode);
				SlideTransistion(TRANS_MODE.RESTART);
				break;
			}
			case 5:
			{
				SlideTransistion(TRANS_MODE.GOTO,rCreditsOptions);
				room_persistent = true;
				break;
			}
		}
	}
}