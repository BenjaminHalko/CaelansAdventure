/// @desc
if(oPlayer.hascontrol)
{
	alarm[1] = room_speed/3;
	rumble = true;
	oPlayer.hascontrol = false;
	oPlayer.vsp = 0;
	oPlayer.hsp = 0;
	oPlayer.automove = false;
	movespd = 5*sign(oPlayer.x-x);
	alarm[0] = room_speed*2;
	hitbysaw = true;
	
	if(oBossUnderground.hp == 8) and (instance_exists(oVaneesaHint))
	{
		oVaneesaHint.counter++;
		
		if(oVaneesaHint.counter >= 3)
		{
			oVaneesaHint.active = true;
		}
	}
}