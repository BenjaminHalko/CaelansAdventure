/// @desc
if(explosions < explosionsmax)
{
	explosions++;
	instance_create_layer(irandom_range(bbox_left,bbox_right),irandom_range(bbox_top,bbox_bottom),"Walls",oExplosionTiny);
}
else
{
	instance_destroy();
}