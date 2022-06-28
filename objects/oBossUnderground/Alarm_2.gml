/// @desc
explosions++;
instance_create_layer(irandom_range(bbox_left,bbox_right),irandom_range(bbox_top,bbox_bottom),"Walls",oExplosion);
if(explosions >= explosionsmax)
{
	instance_destroy();
	with(oSignPost)
	{
		phase = 1;
		image_speed = 1;
		SetAlarm(1,20);
	}
}