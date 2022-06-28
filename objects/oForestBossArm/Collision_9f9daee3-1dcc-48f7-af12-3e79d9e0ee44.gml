/// @desc
if(oPlayer.hascontrol)
{
	alarm[1] = room_speed/3;
	rumble = true;
	oPlayer.hascontrol = false;
	oPlayer.vsp = 0;
	oPlayer.hsp = 0;
	dirspd = point_direction(oForestBoss.x+irandom_range(-10,10),oForestBoss.y+irandom_range(-10,10),oPlayer.x,oPlayer.y);
	alarm[0] = time;
	hitbysaw = true;
}