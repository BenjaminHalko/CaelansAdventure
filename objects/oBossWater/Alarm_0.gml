/// @desc
if(instance_place(x,y-1,oBossWater) == noone)
{
	top = true;
	sprite_index = sWaterTop;
	if((room == rForestNight) and (index != 0)) or (index == 1) sprite_index = sWaterTopNight;
}
else
{
	if(index == noone)
	image_index = (room == rForestNight);
	else
	image_index = index;
	image_speed = 0;
	
	for(var i = bbox_top-16; i > -200; i-=32)
	{
		collidewater = instance_place(x,i,oBossWater);
		if(collidewater != noone) or (collision_line(x,y,x,i,pCollide,false,true) != noone)
		{
			break;
		}
	}
}