/// @desc
explosions++;
instance_create_layer(irandom_range(bbox_left,bbox_right),irandom_range(bbox_top,bbox_bottom),"Walls",oExplosion);
if(explosions >= explosionsmax)
{
	alarm[3] = 5;
}