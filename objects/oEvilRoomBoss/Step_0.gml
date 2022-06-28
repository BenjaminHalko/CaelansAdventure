/// @desc
strechlength = Approch(strechlength,strechlengthamount[attacking],5);

if(phase >= 1) and ((phase < 7) or (phase == 17))
{
	SetAlarm(4,random_range(room_speed,room_speed*5));
}

if(phase > 13) and (phase < 17)
{
	SetAlarm(4,room_speed*4);
	SetAlarm(6,room_speed*3);
}

if(phase == 18)
{
	SetAlarm(6,1);
}

if(oTransition.mode == TRANS_MODE.GOTO) and (oTransition.target == rPause)
{
	oGlobalController.pause = true;
}