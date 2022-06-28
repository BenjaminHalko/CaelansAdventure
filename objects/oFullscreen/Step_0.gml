/// @desc
if(!activated) and ((oTransition.mode == TRANS_MODE.OFF) or (oTransition.mode == TRANS_MODE.INTRO))and (instance_exists(oPlayer))
{
	alarm[0] = room_speed;
	activated = true;
	if(instance_exists(oPlayer))
	oPlayer.hascontrol = false;
}
else if(activated) and (oCamera.mode == 0) and (alarm[0] <= 0)
{
	oPlayer.hascontrol = true;
	instance_destroy();
}