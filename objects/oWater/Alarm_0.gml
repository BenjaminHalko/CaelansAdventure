/// @desc
var zoom = oCamera.view_w/oCamera.normal_view_w;

surface_resize(water_surface,81*zoom,81*zoom);

if(instance_place(x,y-1,oWater) == noone)
{
	top = true;
	sprite_index = sWaterTop;
	if((room == rForestNight) and (index != 0)) or (index == 1) sprite_index = sWaterTopNight;
}
else
{
	if(index == noone)
	{
		if(room == rForestNight)
		image_index = 1;
		else
		image_index = 0;
	}
	else
	image_index = index;
	
	image_speed = 0;
	
	for(var i = bbox_top-16; i > -200; i-=32)
	{
		collidewater = instance_place(x,i,oWater);
		if(collidewater != noone) or (collision_line(x,y,x,i,pCollide,false,true) != noone)
		{
			break;
		}
	}
}