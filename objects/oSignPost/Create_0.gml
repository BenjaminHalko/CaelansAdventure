/// @desc
icony = 0;
phase = 0;
switch(room)
{
	default:
	{
		number = room-rGrasslands-1;
		break;
	}
	case rGrasslands: case rGrasslandsNight: case rUnderground:
	{
		number = room-rGrasslands;
		break;
	}
	case rAirshipInside:
	{
		number = 12;
		break;
	}
	case rAirshipBoss:
	{
		number = 13;
		break;
	}
	case rCastleB:
	{
		number = 14;
		break;
	}
}

floatingiconalpha = 1;
iconalpha = 0;
floatingiconlowalpha = 0;
iconX = x;
iconY = y-46;
dir = noone;
moveiconalpha = 1;
moveiconscale = 1;
iconmovespd = 2;

alphaspd = 0.05;
image_speed = 0;
image_index = 0;

saved = false;