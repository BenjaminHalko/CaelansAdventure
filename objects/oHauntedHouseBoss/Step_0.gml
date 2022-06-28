/// @desc

#region Talking Code
if(!ending) and (!starting)
{
	event_inherited();
}

if(starting) and (activated)
{
	SetAlarm(0,room_speed/2);
}

if(ending) and (!start)
{
	start = true;
	oPlayer.hascontrol = true;
	if(!instance_exists(oBossHealthBar)) instance_create_layer(0,0,layer,oBossHealthBar);
	oCamera.yoffset = 0;
	instance_activate_object(pBonePlatform);
	PlaySong(mSkeleton,true);
	SetAlarm(1,phasetime[phase]);
}
#endregion

#region Boss Code
if(start) and (!destroy)
{
	if(!stopattack)
	{
		script_execute(phaseattack[phase]);
	}
}

if(destroy)
{
	SetAlarm(3,explosionspd);
}
#endregion

if(activated)
{
	oCamera.follow = oCameraCenter.id;
}