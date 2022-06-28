#region Get Player Imput
Inputs();
if (!hascontrol)
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}
#endregion

#region Calculate Movement
if(place_meeting(x,y,oQuicksand))
{
	walksp = quicksandwalksp;
	if(automovewalksp == normalwalksp)
	{
		automovewalksp = walksp;
		automove = false;
		vsp = 0;
	}
}
else
{
	walksp = normalwalksp;
	if(automovewalksp == quicksandwalksp)
	automovewalksp = walksp;
}

if(automove) and (key_left or key_right) and (!key_left or !key_right) and (!lockedspringjump)
{
	automove = false;
}

if(!instance_exists(targetx)) targetx = noone;

if(automove)
{
	hsp = automovewalksp
	if(!cornerspringjump)
	hsp *= sign(image_xscale);
}
else if(targetx != noone)
{
	if(x < targetx.x)
	{
		hsp = walksp;
		if(x + hsp > targetx.x)
		{
			hsp = 0;
			x = targetx.x;
		}
	}
	else
	{
		hsp = -walksp;
		if(x + hsp < targetx.x)
		{
			hsp = 0;
			x = targetx.x;
		}
	}
	
	if(place_meeting(x+hsp,y-incline,pCollide)) and (!place_meeting(x,y,oQuicksand))
	{
		key_jump = true;
	}
}
else if(!lockedspringjump)
{
	var move = key_right - key_left;
	hsp = move * walksp;
	
	if(hsp < 0) and (room == rFinalBossEvilRoomFight) hsp -= 4;
}

if(place_meeting(x,y,oQuicksand))
{
	if(alarm[0] <= 0)
	{
		vsp = quicksandgrv;
	}
}
else if(!swimming) and (!purplespringjump)
{
	vsp = vsp + grv;
	
	if(place_meeting(x,y,oBossWater))
	{
		var verticalmove = key_down - key_up;
		
		vsp = walksp*verticalmove;
	}
}

canjump -= 1;

if ((canjump > 0) or (place_meeting(x,y,oQuicksand)) or ((!lockedspringjump) and (global.unlockedallextras) and (global.infintejump) and (global.unlockedinfintejump))) and (key_jump) and (!(place_meeting(x,y,oQuicksand))) and (!swimming or ((global.unlockedallextras) and (global.infintejump) and (global.unlockedinfintejump))) and (!place_meeting(x,y,oBossWater))
{
	vsp = jumpspd;
	canjump = 0;
	
	if((global.autojump) and (room != rFinalBossEvilRoomFight)) or (global.credits)
	{
		automove = true;
		automovewalksp = walksp;
	}
}

if(key_jump) and (place_meeting(x,y,oQuicksand))
{
	if(place_meeting(x,y+quicksandjumpspd,oQuicksand))
	vsp = quicksandjumpspd;
	else
	vsp = quicksandjumpspd/2;
	automove = true;
	automovewalksp = walksp;
	alarm[0] = 10;
}
#endregion

#region Spring Jump
//Normal
var spring = instance_place(x,y+vsp,pSpringNormal);
if(spring != noone)
{
	spring.image_speed = 1;
	canjump = 0;
	if(spring.object_index == oSpringNormalRed)
	{
		vsp = springspdnormal*sign(spring.image_yscale);
		hsp = 0;
		cornerspringjump = false;
		if(spring.allowmovement)
		{
			automove = false;
			lockedspringjump = false;
		}
		else
		{
			automove = true;
			automovewalksp = 0;
			lockedspringjump = true;
		}
		
	}
	else if(spring.object_index == oSpringNormalPurple)
	{
		hsp = 0;
		vsp = purplespringspd*sign(spring.image_yscale);
		lockedspringjump = true;
		purplespringjump = true;
		automove = false;
	}
	else
	{
		vsp = (jumpspd-0.5)*sign(spring.image_yscale);
		lockedspringjump = false;
		automove = false;
	}
}

//Sideways
var spring = instance_place(x+hsp,y,pSpringSideways);
if(spring != noone)
{
	spring.image_speed = 1;
	canjump = 0;
	automove = true;
	cornerspringjump = false;
	if(spring.object_index == oSpringSidewaysRed)
	{
		hsp = springspdsideways*sign(spring.image_xscale);
	}
	else
	{
		hsp = springspdsideways*sign(spring.image_xscale);
	}
	automovewalksp = hsp;
	lockedspringjump = true;
}

//Corner
var spring = instance_place(x+hsp,y+vsp,pSpringCorner);
if(spring != noone)
{
	spring.image_speed = 1;
	canjump = 0;
	automove = true;
	cornerspringjump = true;
	if(spring.object_index == oSpringCornerRed)
	{
		hsp = -11 * sign(spring.image_xscale);
		vsp = -11 * sign(spring.image_yscale);
	}
	else
	{
		hsp = -walksp*2 * sign(spring.image_xscale);
		vsp = -walksp*2 * sign(spring.image_yscale);
	}
	automovewalksp = hsp;
	lockedspringjump = true;
}
#endregion

#region Horizontal Collision
if((place_meeting(x,y,oQuicksand)) or (canjump <= 0)) and (!place_meeting(x,y+1,pCollide))
{
	if (place_meeting(x+hsp,y,pCollide))
	{
		while(!place_meeting(x+sign(hsp),y,pCollide)) x += sign(hsp);
		if((lockedspringjump) or (cornerspringjump)) and (!place_meeting(x+hsp,y,pSpring))
		{
			lockedspringjump = false;
			cornerspringjump = false;
			automove = false;
		}
		hsp = 0;
	}
}
else
{
	if (place_meeting(x+hsp,y-incline,pCollide))
	{
//		while(!place_meeting(x+sign(hsp),y-inline,pCollide)) x += sign(hsp);
		if((lockedspringjump) or (cornerspringjump)) and (!place_meeting(x+hsp,y,pSpring))
		{
			lockedspringjump = false;
			cornerspringjump = false;
			automove = false;
		}
		hsp = 0;
	}
	else
	{
	    var counter;
	    counter = incline;
	    while (counter >= -incline) && (!place_meeting(x+hsp,y-counter,pCollide))
	    {
	        counter--;
	    }
	    if (counter != -incline-1)
	    {
			y -= counter+1;
	    }
	}
}

x += hsp;
#endregion

#region Vertical Collision
if (place_meeting(x,y+vsp,pCollide))
{
	while(!place_meeting(x,y+sign(vsp),pCollide)) y += sign(vsp);

	if((lockedspringjump) or (cornerspringjump) or (purplespringjump)) and (!place_meeting(x,y+vsp,pSpring))
	{
		lockedspringjump = false;
		cornerspringjump = false;
		purplespringjump = false;
		automove = false;
	}
	
	vsp = 0;
}
y += vsp;
#endregion

#region Move Out of Wall
var moveoutofwall = true;
if(instance_exists(oPlane))
{
	 moveoutofwall = !oPlane.activated;
}

if(instance_exists(oMovingWall))
{
	moveoutofwall = !oMovingWall.ateplayer;
}

if(place_meeting(x,y,pCollide) or place_meeting(x,y,pSpringNormal)) and (!place_meeting(x,y,oMovingWall)) and (moveoutofwall)
{
	var inwall = true;
}
else
{
	var inwall = false;
}

while(place_meeting(x,y,pCollide) or place_meeting(x,y,pSpringNormal)) and (!place_meeting(x,y,oMovingWall)) and (moveoutofwall)
{
	if(alarm[3] <= 0)
	y -= 1;
	else
	y += 1;
}

if(alarm[3] > 0 and inwall)
{
	alarm[3] = 0;
}
#endregion

#region Animation
if(sprite_index != spriteending[global.character])
{
	swimming = false;
	if (!place_meeting(x,y+1,pCollide)) or (place_meeting(x,y,oWater) and (allowstandinginwater == false))
	{
		var water = instance_place(x,y,oWater);
	
		if(water != noone)
		{
			image_speed = 1;
			if(hsp == 0) and (water.object_index != oBossWater or vsp == 0)
			{
				sprite_index = spriteswimming[global.character];
			}
			else
			{
				sprite_index = spriteswimmingrun[global.character];
			}
			swimming = true;
			if(water.top == false)
			automove = false;
		}
		else if(place_meeting(x,y,oBossWater))
		{
			if(hsp == 0 and vsp == 0)
			{
				sprite_index = spriteswimming[global.character];
			}
			else
			{
				sprite_index = spriteswimmingrun[global.character];
			}
		}
		else
		{
			if(sign(vsp) < 0)
			{
				if(sprite_index != spritejump[global.character,snow])
				{
					image_index = 1;
				}
		
				sprite_index = spritejump[global.character,snow];
			}
			else
			{
				if(sprite_index == spritejump[global.character,snow]) and (image_index > 1)
				{
					image_speed = -1;
				}
				else
				{
					image_speed = 1;
					sprite_index = spritefall[global.character,snow];
				}
			}
		}
	}
	else
	{
		canjump = 10;
		if(automove)
		automove = false;
		lockedspringjump = false;
		cornerspringjump = false;
		if(sprite_index == spritefall[global.character,snow])
		{
			if(!global.credits)
			{
				audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
				audio_play_sound(snLanding,4,false);
			}
			
			repeat(5)
			{
				with(instance_create_layer(x,bbox_bottom,layer,oDust))
				{
					vsp = 0;
				}
			}
		}
	
		image_speed = 1;
		if (hsp == 0) and (room != rFinalBossEvilRoomFight)
		{
			sprite_index = spritestand[global.character,snow];
		}
		else if(place_meeting(x,y,oBossWater))
		{
			sprite_index = spriteswimmingrun[global.character];
		}
		else
		{
			sprite_index = spriterun[global.character,snow];	
		}
	}

	if(hsp != 0) and (!lockedspringjump) image_xscale = sign(hsp);
	
	if(hsp == 0) and (room == rFinalBossEvilRoomFight) image_xscale = 1;
	
	if(room == rFinalBossEvilRoomFight)
	{
		hsp = move*walksp;
		if(place_meeting(x+hsp,y,oFinalBossWall))
		{
			var h = sign(hsp);
			if(h == 0) h = 1;
		
			while(!place_meeting(x+h,y,oFinalBossWall)) x += h;
		
			if(hsp >= 0)
			{
				x -= 3;
			}
			
			if(sprite_index == spriterun[global.character,snow])
			sprite_index = spritestand[global.character,snow];
		
			image_xscale = h;
		}
	}
}
#endregion

#region Unlock Door
door = instance_nearest(x,y,oLockedDoor);
if(door != noone)
{
	if(keys != 0) and (point_in_circle(x,y,door.x+(door.sprite_width/2),door.y+(door.sprite_height/2),196)) and (!door.gotkey)
	{
		door.gotkey = true;
		with(oKey)
		{
			if(keynumber == 1)
			{
				mode = 2;
				target = other.door;
			}
			
			if(keynumber != 0)
			{
				keynumber -= 1;
			}
		}
		keys--;
	}
}
#endregion

#region Pause
planeactivated = false;
with(oPlane)
{
	if(activated) other.planeactivated = true;
}

if((hascontrol) or (planeactivated) or (instance_exists(oTest))) and (key_pause) and (!global.credits)
{
	room_persistent = true;
	SlideTransistion(TRANS_MODE.GOTO,rPause);
}
#endregion

allowstandinginwater = true;