/// @desc
if(hit)
{
	if(instance_exists(oText))
	{
		with(oText) instance_destroy();
	}
	x += lengthdir_x(8,point_direction(x,y,oFlyingShip.x,oFlyingShip.ystart));
	y += lengthdir_y(8,point_direction(x,y,oFlyingShip.x,oFlyingShip.ystart));
}
else if(!moving)
{
	image_xscale = Approch(image_xscale,scale,scalespd);
	image_yscale = image_xscale;
	SetAlarm(0,movingdelay);
}
else
{
	x += hsp;
	image_angle -= 5;
}
