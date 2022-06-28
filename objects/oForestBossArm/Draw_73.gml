/// @desc
if(hitbysaw)
{
	with(oPlayer)
	draw_sprite_part_ext(sprite_index,image_index,0,sprite_height-(sprite_height*(other.alarm[0]/other.time)),sprite_width*image_xscale,sprite_height*(other.alarm[0]/other.time),x-(24*image_xscale),y-(sprite_height*(other.alarm[0]/other.time))+24,image_xscale,image_yscale,c_dkgray,1);
}