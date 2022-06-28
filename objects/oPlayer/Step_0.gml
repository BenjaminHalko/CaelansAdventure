#region Get Player Imput
if (hascontrol)
{
	Inputs();
}
else
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
	image_xscale = key_right-key_left;
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
	
	if(place_meeting(x+hsp,y,pCollide))
	{
		key_jump = true;
	}
}
else if(!lockedspringjump)
{
	var move = key_right - key_left;
	hsp = move * walksp;
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
}

canjump -= 1;

if ((canjump > 0) or (place_meeting(x,y,oQuicksand))) and (key_jump) and (!(place_meeting(x,y,oQuicksand))) and (!swimming)
{
	vsp = jumpspd;
	canjump = 0;
	
	if(global.autojump)
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
		vsp = jumpspd*sign(spring.image_yscale);
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
		hsp = springspdnormal * sign(spring.image_xscale);
		vsp = springspdnormal * sign(spring.image_yscale);
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
if (place_meeting(x+hsp,y-incline,pCollide))
{
	if((lockedspringjump) or (cornerspringjump)) and (!place_meeting(x+hsp,y,pSpring))
	{
		lockedspringjump = false;
		cornerspringjump = false;
		automove = false;
	}
	hsp = 0;
}
else if(vsp >= 0)
{
    var counter;
    counter = incline;
    while (counter >= -incline) && (!place_meeting(x+hsp,y-counter,pCollide))
    {
        counter--;
    }
    if (counter != -incline - 1) and (!place_meeting(x,y,oQuicksand))
    {
       y -= counter+1;
    }
}
x += hsp;
#endregion

#region Vertical Collision
if (place_meeting(x,y+vsp,pCollide))
{
    //while(!place_meeting(x,y+sign(vsp),pCollide)) y += sign(vsp);

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
while(place_meeting(x,y,pCollide) or place_meeting(x,y,pSpringNormal))
{
	y -= 1;
}
#endregion

#region Animation
swimming = false;
if (!place_meeting(x,y+1,pCollide))
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
else
{
	canjump = 10;
	if(automove)
	automove = false;
	lockedspringjump = false;
	cornerspringjump = false;
	if(sprite_index == spritefall[global.character,snow])
	{
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
		audio_play_sound(snLanding,4,false);
		repeat(5)
		{
			with(instance_create_layer(x,bbox_bottom,layer,oDust))
			{
				vsp = 0;
			}
		}
	}
	
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spritestand[global.character,snow];
	}
	else
	{
		sprite_index = spriterun[global.character,snow];	
	}
}

if(hsp != 0) and (!lockedspringjump) image_xscale = sign(hsp);
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
if(hascontrol)  and (key_pause)
{
	room_persistent = true;
	SlideTransistion(TRANS_MODE.GOTO,rPause);
}
#endregion

allowstandinginwater = true;