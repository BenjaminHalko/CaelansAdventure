/// @desc
if(oGlobalController.previousroom != rPause)
{
	phase = 0;
	image_speed = 0;
	if(room == rAirshipOutside) or (room == rAirshipNightInside)
	{
		sprite_index = sHouseDoorHauntedHouse;
	}
	alarm[1] = 1;
}