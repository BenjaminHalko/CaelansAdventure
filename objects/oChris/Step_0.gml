/// @desc

// Inherit the parent event
if(active)
event_inherited();

if(!active)
{
	if(!starting)
	{
		if(oPlayer.x >= xstart-512)
		{
			starting = true;
			oPlayer.hascontrol = false;
			oCamera.follow = oPlayer;
			oCamera.xoffset = (xstart-oPlayer.x)/2;
		}
	}
	else
	{
		x = Approch(x,xstart,oPlayer.walksp);
		if(x == xstart)
		{
			SetAlarm(0,room_speed/4);
			sprite_index = sChris;
		}
		else
		{
			sprite_index = sChrisRun;
			image_speed = 1;
		}
	}
}

if(ending) and (!ended)
{
	ended = true;
	oPlayer.sprite_index = oPlayer.spriteending[global.character];
	oGlobalController.pause = true;
	SetAlarm(1,room_speed/2);
}

if(sign(oPlayer.x - x) != 0)
image_xscale = sign(oPlayer.x - x);