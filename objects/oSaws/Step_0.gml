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
		if(!place_meeting(x+other.movespd,y+1,pCollide))
		{
			x += other.movespd;
		}
	}
}

if(!instance_exists(oBossUnderground))
{
	instance_destroy();
}
else if(image_xscale != 1) and (oBossUnderground.phase >= 4) and (global.user != USER.ANNARA)
{
	image_xscale = Approch(image_xscale,0,0.02);
	image_yscale = image_xscale;
	
	if(image_xscale == 0)
	{
		instance_destroy();
	}
}