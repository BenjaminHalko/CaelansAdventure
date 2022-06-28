/// @desc 
if(percent < 1)
{
	percent = min(1,percent+max(((1-percent)/10),0.005));
	iconalpha = percent/2;
	iconscale = Wave(10,15,7,0);
}
else
{
	iconscale = Wave(10,15,7,0);
	Inputs();
	if(key_back) or (key_pause) SlideTransistion(TRANS_MODE.GOTO,previousroom);
	if(key_up_pressed)
	{
		if(pos == 0) pos = array_length_1d(text)-1; else pos -= 1;
	}

	if(key_down_pressed)
	{
		if(pos == array_length_1d(text)-1) pos = 0; else pos += 1;
	}
	if(key_enter)
	{
		switch(pos)
		{
			case 0: default:
			{
				SlideTransistion(TRANS_MODE.GOTO,previousroom);
				break;
			}
			case 1:
			{
				SlideTransistion(TRANS_MODE.RESTART);
				break;
			}
			case 2:
			{
				room_persistent = true;
				SlideTransistion(TRANS_MODE.GOTO,rOptions);
				break;
			}
			case 3:
			{
				room_persistent = true;
				SlideTransistion(TRANS_MODE.GOTO,rControls);
				break;
			}
		}
	}
}

iconrotation += 1;