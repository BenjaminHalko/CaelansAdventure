/// @desc
if(activated)
{
	if(image == noone)
	{
		switch(room)
		{
			case rGrasslands: case rFinalBossGrasslands: default:
			{
				image_index = 0;
				break;
			}
			case rGrasslandsNight:
			{
				image_index = 1;
				break;
			}
			case rDesert: case rFinalBossDesert:
			{
				image_index = 2;
				break;
			}
			case rDesertNight:
			{
				image_index = 3;
				break;
			}
			case rSnow: case rSnowNight: case rFinalBossSnow:
			{
				image_index = 4;
				break;
			}
			case rForest: case rFinalBossForest:
			{
				image_index = 5;
				break;
			}
			case rForestNight:
			{
				image_index = 6;
				break;
			}
			case rHauntedHouseNight:
			{
				image_index = 7;
				break;
			}
		}
	}
	else if(image == -1)
	{
		image_speed = 1;
	}
	else
	{
		image_index = image;
	}
	activated = false;
}