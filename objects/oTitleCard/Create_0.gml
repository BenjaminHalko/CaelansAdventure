/// @desc
switch(room)
{
	default:
	{
		text = "";
		break;
	}
	case rHouse:
	{
		text = "Home";
		break;
	}
	case rGrasslands:
	{
		text = "Grasslands\nDay";
		break;
	}
	case rGrasslandsNight:
	{
		text = "Grasslands\nNight";
		break;
	}
	case rUnderground:
	{
		text = "Underground\nDay";
		break;
	}
	case rUndergroundNight:
	{
		text = "Underground\nNight";
		break;
	}
	case rDesert:
	{
		text = "Desert\nDay";
		break;
	}
	case rDesertNight:
	{
		text = "Desert\nNight";
		break;
	}
	case rSnow:
	{
		text = "Snowy Mountain\nDay";
		break;
	}
	case rSnowNight:
	{
		text = "Snowy Mountain\nNight";
		break;
	}
	case rForest:
	{
		text = "Forest\nDay";
		break;
	}
	case rForestNight:
	{
		text = "Forest\nNight";
		break;
	}
	case rHauntedHouse:
	{
		text = "Haunted House\nDay";
		break;
	}
	case rHauntedHouseNight:
	{
		text = "Haunted House\nNight";
		break;
	}
	case rAirshipOutside:
	{
		text = "Airship\nDay";
		break;
	}
	case rAirshipNightInside:
	{
		text = "Airship\nNight";
		break;
	}
	case rCastle:
	{
		text = "Castle\nDay";
		break;
	}
	case rCastleNight:
	{
		text = "Castle\nNight";
		break;
	}
	case rFinalBossCastle:
	{
		text = "Final Boss";
		break;
	}
	case rFinalBossEvilChrisFightIntro:
	{
		text = "Evil Chris\nFight";
		break;
	}
	case rSecret:
	{
		text = "Grasslands\nDay?";
		break;
	}
}


if(oGlobalController.previousroom == room) or (text == "") or (global.credits)
{
	instance_destroy();
}
else
{
	barheight = 0;

	alarm[0] = room_speed*2;

	oPlayer.hascontrol = false;

	topcolour[PLAYER.C] = c_aqua;
	topcolour[PLAYER.A] = c_fuchsia;
	topcolour[PLAYER.B] = make_colour_rgb(255,161,0);
	topcolour[PLAYER.E] = c_lime;
	topcolour[PLAYER.CH] = c_purple;

	bottomcolour[PLAYER.C] = c_blue;
	bottomcolour[PLAYER.A] = c_red;
	bottomcolour[PLAYER.B] = c_dkgray;
	bottomcolour[PLAYER.E] = c_purple;
	bottomcolour[PLAYER.CH] = c_aqua;
}