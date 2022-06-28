/// @desc
if((oTransition.mode != TRANS_MODE.OFF) and (oTransition.flash))
{
	with(oWater)
	{
		draw_self();
		if(collidewater != noone)
		{
			draw_sprite_stretched(sprite_index,image_index,x,collidewater.bbox_bottom+1,sprite_width,round(bbox_bottom-collidewater.bbox_bottom-32));
		}
	}

	with(oBossWater)
	{
		draw_self();
		if(collidewater != noone)
		{
			draw_sprite_stretched(sprite_index,image_index,x,collidewater.bbox_bottom+1,sprite_width,round(bbox_bottom-collidewater.bbox_bottom-32));
		}
	}
}