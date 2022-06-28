/// @desc 
if(percent < 1)
{
	percent = min(1,percent+max(((1-percent)/10),0.005));
	iconscale = Wave(10,15,7,0);
}
else if(oTransition.mode == TRANS_MODE.OFF)
{
	Inputs();
	iconscale = Wave(10,15,7,0);
	if(key_back)
	{
		SlideTransistion(TRANS_MODE.GOTO,rOptions);
		global.user = Load("Settings","User",USER.CAELAN);
	}
	if(key_left_pressed)
	{
		if(pos == 0) pos = array_length_1d(sprite); else pos -= 1;
	}

	if(key_right_pressed)
	{
		if(pos == array_length_1d(sprite)) pos = 0; else pos += 1;
	}
	
	if(key_left_pressed or key_right_pressed)
	{
		switch(pos)
		{
			case 0:
			{
				global.user = USER.CAELAN;
				break;
			}
			case 1:
			{
				global.user = USER.ANNARA;
				break;
			}
			case 2:
			{
				global.user = USER.CHRIS;
				break;
			}
			case 3:
			{
				global.user = Load("Settings","User",USER.CAELAN);
				break;
			}
		}
	}
	
	if(key_enter)
	{
		switch(pos)
		{
			case 0:
			{
				global.user = USER.CAELAN;
				break;
			}
			case 1:
			{
				global.user = USER.ANNARA;
				break;
			}
			case 2:
			{
				global.user = USER.CHRIS;
				break;
			}
			case 3:
			{
				SlideTransistion(TRANS_MODE.GOTO,rOptions);
				break;
			}
		}
		
		if(global.user != Load("Settings","User",USER.CAELAN))
		{
			Save("Settings","User",global.user);
			SlideTransistion(TRANS_MODE.RESTART);
		}
		else
		{
			SlideTransistion(TRANS_MODE.GOTO,rOptions);
		}
	}
}

iconrotation += 1;

index += sprite_get_speed(sPlayerRunC)/room_speed;
while(index >= sprite_get_number(sPlayerRunC))
{
	index -= sprite_get_number(sPlayerRunC);
}