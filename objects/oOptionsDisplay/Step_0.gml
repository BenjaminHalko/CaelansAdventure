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
				SlideTransistion(TRANS_MODE.GOTO,rOptions);
				break;
			}
			case 1:
			{
				var fullscreen = !window_get_fullscreen();
				window_set_fullscreen(fullscreen);
				Save("Settings","Fullscreen",fullscreen);
				break;
			}
			case 2:
			{
				global.retrofilter = !global.retrofilter;
				Save("Settings","Retro Filter",global.retrofilter);
				break;
			}
		}
	}
}