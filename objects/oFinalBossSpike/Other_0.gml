/// @desc
if(x > room_width)
{
	if(create == 0)
	{
		var spike = instance_create_layer(xstart,ystart,layer,oFinalBossSpike);
		spike.xx = xx-32;
		spike.active = true;
	}
	instance_destroy();
}