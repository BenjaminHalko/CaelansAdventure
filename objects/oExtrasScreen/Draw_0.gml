/// @desc 
draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,image_blend,image_alpha);
	if(oExtrasMenu.y == oExtrasMenu.ystart-(oExtrasMenu.pos*oExtrasMenu.margin)) and (Load("Extras","Watched - "+string(oExtrasMenu.pos),false)) and (oExtrasMenu.pos != 0)
{
	if(global.user == USER.ANNARA)
	draw_sprite_stretched(sExtrasAnnara,oExtrasMenu.pos-1,x,y,sprite_width,sprite_height);
	else
	draw_sprite_stretched(sExtras,oExtrasMenu.pos-1,x,y,sprite_width,sprite_height);
}