/// @desc
if(instance_place(x,bbox_bottom+1,oQuicksand) == noone) 
{
	if(room == rDesert)
	{
		instance_create_layer(x,y+(sprite_width/3)*2,layer,oWall);
		mask_index = sQuicksandMask;
	}
}
invisible = false;