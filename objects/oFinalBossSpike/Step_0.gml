/// @desc
if(attack or finalattack) and (x >= 0)
{
	image_blend = make_color_hsv(0,Approch(color_get_saturation(image_blend),255,10),255);
	if(color_get_saturation(image_blend) == 255)
	{
		if(move)
		{
			x += 15;
		}
		else
		{
			SetAlarm(1,room_speed);
			if(finalattack)
			x += 5;
			else
			x += 1;
		}
	}
	
	if(create != 0)
	{
		SetAlarm(2,create);
	}
	
	y = ystart;
}
else if(active)
{
	if(finalattack)
	xx = Approch(xx,0,5);
	else
	xx = Approch(xx,0,1);
	x = xx+irandom_range(-2,2);
	y = ystart+irandom_range(-2,2)
	if(finalattack != 0)
	{
		SetAlarm(2,create);
	}
}

if(finalattack)
{
	image_alpha = (point_distance(x,y,oPlayer.x,oPlayer.y)-8)/64;
}