/// @desc
hitbysaw = false;
time = room_speed*2;
movespd = 0;
rumble = true;

phase = 0;
number = irandom_range(2,6);
spd = 1;
fallspd = irandom_range(2,5);
if(global.user == USER.ANNARA)
{
	if(irandom(1) == 0)
	{
		instance_change(oSombrero,true);
	}
}
else
{
	if(irandom(2) == 0)
	{
		instance_change(oSombrero,true);
	}
}
destroy = false;