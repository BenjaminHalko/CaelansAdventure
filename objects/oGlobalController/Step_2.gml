/// @desc Rumble
if(global.rumble) and (rumble) and (global.gamepad)
{
	gamepad_set_vibration(global.gp,1,1);
}
else
{
	gamepad_set_vibration(global.gp,0,0);
}

rumble = false;