/// @desc
vsp = 30;
start = false;
alarm[0] = room_speed/2;
for(var i = 1; i < 50; i++)
{
	var laser = instance_create_layer(x,y,"Weapons",oLaserFire);
	laser.alarm[0] = alarm[0]+i;
}
warningindex = true;
warningspd = sprite_get_speed(sWarning);