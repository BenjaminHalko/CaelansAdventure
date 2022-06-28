/// @desc
oFlyingShip.phase++;
if(global.annaramode)
{
	if(oFlyingShip.phase >= 5)
	{
		oFlyingShip.phase = 7;
	}
}
instance_destroy();
oFlyingShip.alarm[1] = oFlyingShip.phasedelay[oFlyingShip.phase];
instance_create_layer(x,y,layer,oExplosionNoShake);