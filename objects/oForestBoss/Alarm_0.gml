/// @desc
if(explosions < explosionsmax)
{
	explosions++;
	instance_create_layer(irandom_range(bbox_left,bbox_right),irandom_range(bbox_top,bbox_bottom),"Water",oExplosionTiny);
	with(oForestBossArm)
	{
		destroy = true;
		instance_create_layer(irandom_range(bbox_left,bbox_right),irandom_range(bbox_top,bbox_bottom),"Water",oExplosionTiny);
	}
	if(explosions >= explosionsmax)
	{
		instance_create_layer(x,y,"Key",oKeyWaterDeactivate);
		instance_destroy();
	}
}