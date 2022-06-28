/// @desc
if(start)
{
	vsp += grv*1.5;
	y += vsp*1.5;
	
	if(vsp > 0)
	{
		if(clockwise)
		{
			image_angle = Approch(image_angle,0,vsp*5);
		}
		else
		{
			image_angle = Approch(image_angle,360,vsp*5);
		}
	}
}

SetAlarm(1,sprite_get_speed(sWarning));