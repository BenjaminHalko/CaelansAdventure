/// @desc
if(global.annaramode)
oMovingWall.movespd = spd*1.5;
else
oMovingWall.movespd = spd;
with(oMovingWallSpdSetter)
{
	if(spd != 0)
	instance_destroy();
}
instance_destroy();