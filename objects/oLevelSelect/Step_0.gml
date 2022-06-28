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
				oGlobalController.levelselected = rGrasslandsNight;
				break;
			}
			case 4:
			{
				oGlobalController.levelselected = rUnderground;
				break;
			}
			case 5:
			{
				oGlobalController.levelselected = rUndergroundNight;
				break;
			}
			case 6:
			{
				oGlobalController.levelselected = rDesert;
				break;
			}
			case 7:
			{
				oGlobalController.levelselected = rDesertNight;
				break;
			}
			case 8:
			{
				oGlobalController.levelselected = rSnow;
				break;
			}
			case 9:
			{
				oGlobalController.levelselected = rSnowNight;
				break;
			}
			case 10:
			{
				oGlobalController.levelselected = rForest;
				break;
			}
			case 11:
			{
				oGlobalController.levelselected = rForestNight;
				break;
			}
			case 12:
			{
				oGlobalController.levelselected = rHauntedHouse;
				break;
			}
			case 13:
			{
				oGlobalController.levelselected = rHauntedHouseNight;
				break;
			}
			case 14:
			{
				oGlobalController.levelselected = rAirshipOutside;
				break;
			}
			case 15:
			{
				oGlobalController.levelselected = rAirshipNightInside;
				break;
			}
			case 16:
			{
				oGlobalController.levelselected = rCastle;
				break;
			}
			case 17:
			{
				oGlobalController.levelselected = rCastleNight;
				break;
			}
			case 18:
			{
				oGlobalController.levelselected = rFinalBossCastle;
				break;
			}
			case 19:
			{
				oGlobalController.levelselected = rFinalBossEvilChrisFightIntro;
				break;
			}
			case 20:
			{
				oGlobalController.levelselected = rSecret;
				break;
			}
		}
		
		if(pos != 0)
		SlideTransistion(TRANS_MODE.GOTO,rCharacterSelect);
	}
}

y = Approch(y,ystart-(pos*margin),spd);