/// @desc
oMovingWall.movespd = spd/4;
with(oMovingWallSpdSetter)
{
	if(spd != 0)
	instance_destroy();
}
instance_destroy();