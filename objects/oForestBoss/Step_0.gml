/// @desc
#region Talking Code
if(!activated) and (!instance_exists(oForestBossActivator))
{
	visible = true;
	with(oForestBossArm)
	{
		visible = true;
	}
	activated = true;
	oPlayer.hascontrol = false;
	if(!instance_exists(oBossHealthBar)) instance_create_layer(0,0,layer,oBossHealthBar);
}

if(starting) and (activated)
{
	y = Approch(y,ystart,5);
	ScreenShake(5,1);
	Rumble();
	if(y == ystart)
	{
		SetAlarm(6,room_speed/2);
		starting = false;
	}
}

if(ending) and (!start)
{
	start = true;
	oPlayer.hascontrol = true;
}
#endregion

#region Boss Code
if(hp <= 0)
{
	SetAlarm(0,5);
}
else if(start)
{
	if(place_meeting(x+spd*xdir,y,pCollide)) or (place_meeting(x+spd/3*xdir,y,oPlayer))
	{
		xdir = -xdir;
	}
			
	if(place_meeting(x,y+spd*ydir,pCollide)) or (place_meeting(x,y+spd/3*ydir,oPlayer))
	{
		ydir = -ydir;
	}
			
	x += xdir*spd;
	y += ydir*spd;
			
	
	if(stop)
	{
		spd = Approch(spd,0,0.2);
		if(spd == 0) and (!stopped)
		{
			stopped = true;
			SetAlarm(2,room_speed*2+random(6*room_speed));
			if(hp > 3)
			{
				with(oForestBossArm)
				{
					extendphase = 1;
				}
			}
		}
	}
	else
	{
		if(hp <= 3)
		{
			spd = Approch(spd,7,0.2);
			image_angle += 1;
		}
		else
		{
			spd = Approch(spd,4,0.2);
			stopped = false;
			if(oForestBossArm.image_yscale == 1)
			{
				if(hp == 7) and (instance_exists(oVaneesaHint)) and (alarm[5] <= 0)
				{
					oVaneesaHint.counter++;
					
					if(oVaneesaHint.counter >= 2)
					oVaneesaHint.active = true;
				}
				
				SetAlarm(5,random(15*room_speed));
				if(anglespd == 0)
				{
					anglespd = random_range(-10,10);
				}
				image_angle += anglespd;
				anglespd = Approch(anglespd,0,0.1);
			}
			else
			{
				image_angle -= (spd/10);
			}
		}
	}
	
	if(hitbyplayer)
	{
		if(alarm[2] > 1) alarm[2] = 1;
		pushspd = Approch(pushspd,0,0.1);
		if(pushspd == 0)
		{
			oPlayer.hascontrol = true;
			hitbyplayer = false;
		}
		with(oPlayer)
		{
			if(!place_meeting(x + lengthdir_x(other.pushspd,other.pushdir),y + lengthdir_y(other.pushspd,other.pushdir),pCollide))
			{
				x += lengthdir_x(other.pushspd,other.pushdir);
				y += lengthdir_y(other.pushspd,other.pushdir);
			}
		}
	}
	
	if(alarm[1] <= 0) and (!place_meeting(x,y,oPlayer)) and (!allowhit)
	{
		allowhit = true;
	}
}
#endregion

if(hp <= 3)
{
	image_blend = make_color_hsv(0,Wave(0,255,5,0),255);
	with(oForestBossArm)
	{
		image_blend = make_color_hsv(0,Wave(0,255,5,0),255);
	}
	eyeangle -= eyeanglespd;
	eyeanglespd += 0.05;
}
else
{
	if(oForestBossArm.extendphase == 1)
	{
		eyeanglespd = Approch(eyeanglespd,50,1);
		eyeangle -= eyeanglespd;
		Rumble();
		ScreenShake(5,10);
	}
	else
	{
		
		if(eyeanglespd <= 2)
		{
			eyeanglespd = Approch(eyeanglespd,1,eyeanglespd/4);
			eyeangle = Approch(Wrap(eyeangle,0,360),0,eyeanglespd);			
		}
		else
		{
			eyeanglespd = Approch(eyeanglespd,2,0.5);
			eyeangle = Wrap(eyeangle-eyeanglespd,0,360);
		}
	}
}

for(var i = 0; i < 8; i++)
{
	image_xscale = 1;
	if(instance_exists(arm[i]))
	{
		arm[i].x = x+lengthdir_x(sprite_width/2-3,image_angle+(360/8)*i);
		arm[i].y = y+lengthdir_y(sprite_width/2-3,image_angle+(360/8)*i);
		arm[i].image_angle = image_angle-90+(360/8)*i;
	}
}