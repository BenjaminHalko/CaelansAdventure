/// @desc
if(hitbysaw)
{
	SetAlarm(1,room_speed/3);
	if(rumble)
	{
		Rumble();
	}
	with(oPlayer)
	{
		if(!place_meeting(x+lengthdir_x(5,other.dirspd),y+lengthdir_y(5,other.dirspd),pCollide))
		{
			x += lengthdir_x(5,other.dirspd);
			y += lengthdir_y(5,other.dirspd);
		}
	}
}

if(destroy)
{
	image_yscale = Approch(image_yscale,0,max(0.02,image_yscale/20));
	if(image_yscale == 0) instance_destroy();
}
else
{
	switch(extendphase)
	{
		case 0:
		{
			image_yscale = Approch(image_yscale,1,median(3,image_yscale/10,0.5));
			image_blend = make_color_hsv(0,Approch(colour_get_saturation(image_blend),0,0.5),255);
			if(oForestBoss.hp > 3)
			glowalpha = Approch(glowalpha,0,0.01);
			extendspd = 0.1;
			if(oForestBoss.hp <= 3)
			{
				SetAlarm(2,random(room_speed*10));
			}
			break;
		}
		case 1:
		{
			image_yscale = Approch(image_yscale,0,extendspd);
			extendspd = Approch(extendspd,0,0.0015);
			if(extendspd == 0)
			{
				extendphase = 2;
			}
			break;
		}
		case 2:
		{
			if(oForestBoss.hp > 3)
			glowalpha = 1;
			extendspd = Approch(extendspd,5,0.1);
			image_yscale = Approch(image_yscale,1920/8,extendspd);
			image_blend = make_color_hsv(0,Approch(colour_get_saturation(image_blend),255,10),255);
			if(oForestBoss.hp <= 3)
			{
				SetAlarm(2,random(room_speed*5));
			}
			break;
		}
		case 3:
		{
			destroy = true;
			break;
		}
	}
}

if(oForestBoss.hp <= 3)
{
	glowalpha = Approch(glowalpha,1,0.01);
	image_speed = 2;
}

image_xscale = median(1.5,1/image_yscale,0.3);