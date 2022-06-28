/// @desc

#region Talking Code
if(!ending) and (!starting)
{
	event_inherited();
	y = Wave(yy-margin,yy+margin,5,0);
}

if(!activated) and (point_in_circle(oPlayer.x,oPlayer.y,x+sprite_width/2,yy+sprite_height/2,300))
{
	activated = true;
	oPlayer.hascontrol = false;
	PlaySong(mBoss,true);
	
	oCamera.yoffset = -128;
}

if(starting) and (activated)
{
	yy = Approch(yy,550,5);
	ScreenShake(5,1);
	Rumble();
	if(yy == 550)
	{
		starting = false;
	}
	y = Wave(yy-margin,yy+margin,5,0);
}

if(ending) and (!start)
{
	start = true;
	if(!instance_exists(oBossHealthBar)) instance_create_layer(0,0,layer,oBossHealthBar);
	oPlayer.hascontrol = true;
	oCamera.yoffset = -64;
}
#endregion

#region Boss Code
if(start)
{
	switch(phase)
	{
		case 0:
		{
			if(place_meeting(x+movespd*image_xscale,y,oWallGrass)) or (place_meeting(x+movespd*image_xscale,y,oLockedDoorWall))
			{
				image_xscale = -image_xscale;
			}
	
			x += movespd*image_xscale;
	
			vsp += 0.3;

			if(place_meeting(x,y+vsp,oWallGrass)) or (place_meeting(x,y+vsp,oLockedDoorWall))
			{
				vsp = random_range(-6,-12);
				with(spring_left)
				{
					image_speed = 1;
				}
				
				with(spring_center)
				{
					image_speed = 1;
				}
				
				with(spring_right)
				{
					image_speed = 1;
				}
			}
	
			y += vsp;
	
			if(hitplayer)
			{
				SetAlarm(3,room_speed/3);
				if(rumble)
				{
					Rumble();
				}
			}
			break;
		}
		case 1:
		{
			x = Approch(x,6590,5);
			y = Approch(y,500,5);
			
			if(x == 6590) and (y == 500)
			{
				SetAlarm(2,room_speed/2);
			}
			break;
		}
		case 2:
		{
			if(global.user != USER.ANNARA)
			{
				image_blend = make_color_hsv(0,Wave(0,255,5,0),255);
				PlaySong(mBossHurry,true);
			}
			
			bossspringpos = Approch(bossspringpos,-32,5);
			with(pSpring)
			{
				y = ystart + other.bossspringpos;
			}
			
			if(place_meeting(x+movespd*image_xscale,y,oWallGrass)) or (place_meeting(x+movespd*image_xscale,y,oLockedDoorWall))
			{
				image_xscale = -image_xscale;
			}
	
			x += movespd*image_xscale*1.5;
	
			vsp += 0.3*1.5;

			if(place_meeting(x,y+vsp,oWallGrass)) or (place_meeting(x,y+vsp,oLockedDoorWall))
			{
				vsp = random_range(-5,-20);
				with(spring_left)
				{
					image_speed = 1;
				}
				
				with(spring_center)
				{
					image_speed = 1;
				}
				
				with(spring_right)
				{
					image_speed = 1;
				}
			}
	
			y += vsp;
	
			if(hitplayer)
			{
				SetAlarm(3,room_speed/3);
				if(rumble)
				{
					Rumble();
				}
			}
			break;
		}
		case 3:
		{
			SetAlarm(0,30);
			with(pSpring)
			{
				y = Approch(y,ystart,5);
			}
			if(explosions >= 1)
			{
				vsp += 0.3;
				if(place_meeting(x,y+vsp,oWallGrass)) or (place_meeting(x,y+vsp,oLockedDoorWall))
				{
					vsp = 0;
					SetAlarm(2,room_speed/2);
				}
				y += vsp;
			}
			else
			{
				vsp = 0;
			}
			break;
		}
		case 4:
		{
			y = Approch(y,500,5);
			if(y == 500)
			{
				x += 10;
				if(x >= room_width-100)
				{
					oPlayer.hascontrol = true;
					instance_destroy();
				}
			}
		}
	}
	
	if(oPlayer.hascontrol)
	{
		if(place_meeting(x+movespd*image_xscale,bbox_bottom,oPlayer)) and (place_meeting(oPlayer.x,oPlayer.bbox_bottom+1,oWallGrass))
		{
			if(phase == 0)
			{
				alarm[3] = room_speed/3;
				rumble = true;
				oPlayer.vsp = 0;
				oPlayer.hsp = 0;
				oPlayer.automove = false;
				oPlayer.hascontrol = false;
				alarm[4] = room_speed*2;
				hitplayer = true;
			}
		}
		else
		{
			hit = false;
		
			with(oPlayer)
			{
				if(place_meeting(x+hsp+(other.movespd*other.image_xscale),y+vsp+other.vsp,oSnowBoss))
				{
					other.hit = true;
					other.hitbyplayer = true
					hsp = 6*sign(other.x-x);
					vsp = abs(other.vsp)*1.25*sign(other.y-y);
					hascontrol = false;
				}
			}
		
			if(hit) and (allowhit)
			{
				allowhit = false;
				SetAlarm(1,room_speed/4);
				hp -= 1;
				if(hp <= 2) and (phase ==  0)
				{
					phase = 1;
				}
				else if(hp <= 0) and (phase == 2)
				{
					phase = 3;
					oPlayer.hascontrol = false;
				}
			}
		}
	}
	
	if(hitbyplayer)
	{
		with(oPlayer)
		{
			if(place_meeting(x,y+1,oWallGrass)) or (place_meeting(x,y+vsp,pSpring))
			{
				other.hitbyplayer = false;
				hascontrol = true;
			}
		}
	}
	
	with(oPlayer)
	{
		if(place_meeting(x+hsp+(other.movespd*other.image_xscale),y+vsp+other.vsp,oSnowBoss))
		{
			hsp = 6*sign(other.x-x);
			vsp = abs(other.vsp)*1.25*sign(other.y-y);
			
			if(other.hp == 5) and (instance_exists(oVaneesaHint)) and (!other.hitbyplayer)
			{
				oVaneesaHint.counter++;
		
				if(oVaneesaHint.counter >= 3)
				{
					oVaneesaHint.active = true;
				}
			}
		}
	}
}
#endregion

y = max(128,y);

#region Move Springs

spring_left.x = x-(image_xscale*45);
spring_left.y = y+60;
spring_left.image_xscale = image_xscale;

spring_center.x = x-(image_xscale*13);
spring_center.y = y+80;
spring_center.image_xscale = image_xscale;

spring_right.x = x+(image_xscale*51);
spring_right.y = y+60;
spring_right.image_xscale = -image_xscale;
#endregion