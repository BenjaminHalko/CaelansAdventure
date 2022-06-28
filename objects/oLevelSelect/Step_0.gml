/// @desc 
if(percent < 1)
{
	percent = min(1,percent+max(((1-percent)/10),0.005));
}
else if(y == ystart-(pos*margin))
{
	Inputs();
	if(key_back) SlideTransistion(TRANS_MODE.GOTO,rMenu);
	if(key_up_pressed)
	{
		if(pos != 0) pos -= 1;
	}

	if(key_down_pressed)
	{
		if(pos != array_length_1d(text)-1) pos += 1;
	}
	if(key_enter)
	{
		switch(pos)
		{
			case 0:
			{
				SlideTransistion(TRANS_MODE.GOTO,rMenu);
				break;
			}
			case 1:
			{
				oGlobalController.levelselected = rHouse;
				break;
			}
			case 2:
			{
				oGlobalController.levelselected = rGrasslands;
				break;
			}
			case 3:
			{
				oGlobalController.levelselected = rUnderground;
				break;
			}
			case 4:
			{
				oGlobalController.levelselected = rDesert;
				break;
			}
			case 5:
			{
				oGlobalController.levelselected = rSnow;
				break;
			}
		}
		
		if(pos != 0)
		SlideTransistion(TRANS_MODE.GOTO,rCharacterSelect);
	}
}

y = Approch(y,ystart-(pos*margin),spd);