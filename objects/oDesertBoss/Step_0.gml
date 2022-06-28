/// @desc

#region Talking Code
if(!ending) and (!starting)
{
	event_inherited();
}

if(!activated) and (point_in_circle(oPlayer.x,oPlayer.y,x+sprite_width/2,y+sprite_height/2,512))
{
	activated = true;
	oPlayer.hascontrol = false;
	PlaySong(mCactus,true);
	oCamera.yoffset = -256;
	oCamera.xoffset = 200;
}

if(starting) and (activated)
{
	ScreenShake(5,1);
	Rumble();
	starting = false;
}

if(ending) and (!start)
{
	start = true;
	if(!instance_exists(oBossHealthBar)) instance_create_layer(0,0,layer,oBossHealthBar);
	oPlayer.hascontrol = true;
	oCamera.xoffset = 0;
	oCamera.yoffset = -200;
}
#endregion

#region Boss Code
if(start)
{
	switch(phase)
	{
		case 0:
		{
			if(alarm[2] <= 0)
			{
				if(alarm[3] <= 0)
				{
					alarm[3] = room_speed*8;
					alarm[2] = room_speed*2;
				}
			}
			else
			{
				SetAlarm(1,room_speed/2);
			}
			image_yscale = Approch(image_yscale,1,0.02);
			break;
		}
		case 1:
		{
			if(alarm[2] <= 0)
			{
				if(alarm[3] <= 0)
				{
					alarm[3] = room_speed*4;
					alarm[2] = room_speed;
				}
			}
			else
			{
				SetAlarm(1,room_speed/4);
			}
			image_yscale = Approch(image_yscale,1,0.04);
			break;
		}
		case 2:
		{
			if(alarm[2] <= 0)
			{
				if(alarm[3] <= 0)
				{
					alarm[3] = room_speed*4;
					alarm[2] = room_speed*2;
				}
			}
			else
			{
				SetAlarm(1,room_speed/4);
			}
			image_yscale = Approch(image_yscale,1,0.04);
			break;
		}
		case 3:
		{
			SetAlarm(1,room_speed/4);
			image_yscale = Approch(image_yscale,1,0.04);
			break;
		}
		case 4:
		{
			SetAlarm(1,room_speed/6);
			image_yscale = Approch(image_yscale,1,0.1);
			break;
		}
		case 5:
		{
			SetAlarm(0,room_speed/2);
			oPlayer.hascontrol = false;
			with(oSombreroSaw)
			{
				SetAlarm(3,irandom(30));
				destroy = true;
			}
			
			with(oSombrero)
			{
				phase = 3;
			}
			break;
		}
		case 6:
		{
			image_yscale = Approch(image_yscale,0,0.01);
			if(image_yscale == 0)
			{
				instance_destroy();
				oPlayer.hascontrol = true;
				oCamera.follow = oPlayer.id;
				with(oSombrero)
				{
					phase = 4;
				}
			}
			break;
		}
	}
	
	if(phase != 5) and (phase != 6)
	{
		if(hit) and (allowhit)
		{
			hit = false;
			hp -= 1;
			allowhit = false;
			SetAlarm(4,room_speed/3);
			if(hp <= 0) or (global.user == USER.ANNARA and hp <= 3)
			{
				phase = 5;
				alarm[5] = room_speed;
				oCamera.xoffset = 0;
				oCamera.yoffset = 0;
				oCamera.follow = id;
			}
			else if(hp <= 3)
			{
				phase = 4;
			}
			else if (hp <= 6)
			{
				phase = 3;
			}
			else if (hp <= 9)
			{
				phase = 2;
			}
			else if(hp <= 12)
			{
				phase = 1;
			}
		}
	}
}
#endregion