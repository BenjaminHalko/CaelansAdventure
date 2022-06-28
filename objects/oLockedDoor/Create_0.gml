/// @desc
event_inherited();
gotkey = false;
switchedlocking = false;
doormovespd = 4;
delayrightbridge = true;
stopup = false;
stopdown = false;
stopleft = false;
stopright = false;
if(up)
{
	doorup = instance_create_depth(x+(sprite_width/2),y,depth+1,oLockedDoorWall);
	if(uplocked)
	{
		while(instance_place(doorup.x,doorup.yy,oLockedDoorBarrier) == noone)
		{
			doorup.yy -= 1;
		}
	}
	else
	{
		doorup.yy = doorup.y;
	}
}

if(down)
{
	doordown = instance_create_depth(x+(sprite_width/2),y+sprite_height,depth+1,oLockedDoorWall);
	doordown.image_angle = 180;
	if(downlocked)
	{
		while(instance_place(doordown.x,doordown.yy-65,oLockedDoorBarrier) == noone)
		{
			doordown.yy += 1;
		}
	}
	else
	{
		doordown.yy = doordown.y;
	}
}

if(left)
{
	doorleft = instance_create_depth(x,y+(sprite_height/2),depth+1,oLockedDoorWall);
	doorleft.image_angle = 90;
	if(leftlocked)
	{
		while(instance_place(doorleft.xx+1,doorleft.y,oLockedDoorBarrier) == noone)
		{
			doorleft.xx -= 1;
		}
	}
	else
	{
		doorleft.xx = doorleft.x;
	}
}

if(right)
{
	doorright = instance_create_depth(x+sprite_width,y+(sprite_height/2),depth+1,oLockedDoorWall);
	doorright.image_angle = 270;
	if(rightlocked)
	{
		while(instance_place(doorright.xx-65,doorright.y,oLockedDoorBarrier) == noone)
		{
			doorright.xx += 1;
		}
	}
	else
	{
		doorright.xx = doorright.x;
	}
}