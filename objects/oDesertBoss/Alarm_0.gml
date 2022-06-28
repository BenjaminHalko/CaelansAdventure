/// @desc
if(explosions < explosionsmax)
{
	explosions++;
	instance_create_layer(irandom_range(bbox_left,bbox_right),irandom_range(bbox_top,bbox_bottom),"Walls",oExplosionTiny);
}
else
{
	phase = 6;
	instance_create_layer(x,y-sprite_height/2,"Key",oKey);
}