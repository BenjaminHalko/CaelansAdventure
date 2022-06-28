/// @desc
if(oGlobalController.previousroom != rPause)
{
	phase = 0;
	image_speed = 0;
	image_index = 0;
	if(room == rAirshipOutside) or (room == rAirshipNightInside)
	{
		sprite_index = sHouseDoorHauntedHouse;
	}
	deactivated = false;
	alarm[0] = -1;
	alarm[1] = -1;
	alarm[2] = -1;
}