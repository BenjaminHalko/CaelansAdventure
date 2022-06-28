/// @desc 
if(percent < 1)
{
	percent = min(1,percent+max(((1-percent)/10),0.005));
	iconscale = Wave(10,15,7,0);
}
else if(phase == 0)
{
	Inputs();
	iconscale = Wave(10,15,7,0);
	if(key_back) SlideTransistion(TRANS_MODE.GOTO,rLevelSelect);
	if(key_left_pressed)
	{
		if(pos == 0) pos = array_length_1d(sprite); else pos -= 1;
	}

	if(key_right_pressed)
	{
		if(pos == array_length_1d(sprite)) pos = 0; else pos += 1;
	}
	if(key_enter)
	{
		switch(pos)
		{
			case 0:
			{
				global.character = PLAYER.C;
				break;
			}
			case 1:
			{
				global.character = PLAYER.A;
				break;
			}
			case 2:
			{
				SlideTransistion(TRANS_MODE.GOTO,rLevelSelect);
				break;
			}
		}
		
		if(pos != 2)
		{
			phase = 1;
			PlaySong(mIcon,false);
		}
	}
}
else if(phase == 1)
{
	iconscale = Approch(iconscale,1,0.2);
	if(iconscale == 1)
	{
		phase = 2;
	}
}
else if(phase == 2)
{
	iconscale = Approch(iconscale,200,0.5*(max(1,iconscale/20)));
	Rumble();
	if(iconscale == 200)
	{
		SlideTransistion(TRANS_MODE.GOTO,oGlobalController.levelselected);
		phase = 3;
	}
}

iconrotation += 1;

index += sprite_get_speed(sPlayerRunC)/room_speed;
while(index >= sprite_get_number(sPlayerRunC))
{
	index -= sprite_get_number(sPlayerRunC);
}

iconalpha = Approch(iconalpha,0.25,0.03);