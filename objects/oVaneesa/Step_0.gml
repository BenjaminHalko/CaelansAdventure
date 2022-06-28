/// @desc

// Inherit the parent event
event_inherited();

var dir = sign(oPlayer.x - x);
if(dir != 0) image_xscale = dir;

if(dir == -1)
{
	with(oText)
	{
		if(creator == noone)
		{
			instance_destroy();
			oCamera.follow = oPlayer.id;
		}
	}
}