/// @desc
if(hitplayer)
{
	hitplayer = false;
	oPlayer.hascontrol = true;
	
	if(phase <= 1) and (instance_exists(oVaneesaHint))
	{
		oVaneesaHint.counter++;
		
		if(oVaneesaHint.counter >= 3)
		{
			oVaneesaHint.active = true;
		}
	}
}
else if(phase != 9)
{
	phase++;
	if(global.user == USER.ANNARA) and (phase >= 4) and (phase < 7)
	{
		phase = 7;
	}
}

if(phase != 9)
alarm[2] = room_speed/2;
else
{
	destroy = true;
	instance_create_layer(7840,768,"Key",oKey);
}