/// @desc
if(room == rMenu) and (!allowdebug) and (!instance_exists(oMenu)) and (!instance_exists(oMenuFinished)) and (!instance_exists(oMenuFinishedExtras))
{
	if(keyboard_check_pressed(debugenable[debugpos]))
	{
		debugpos++;
		if(debugpos >= 11)
		{
			allowdebug = true;
			audio_play_sound(snCollect,1,false);
		}
	}
	else
	{
		instance_destroy();
	}
}
else if(!allowdebug)
{
	instance_destroy();
}