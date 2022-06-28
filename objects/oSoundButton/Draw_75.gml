/// @desc
var x1 = 0;
var y1 = 0;

var w = display_get_gui_width();
var h = display_get_gui_height();

draw_sprite_ext(sprite_index,image_index,(x1+(w/2)),y1+h/3+h/10+h/5,1,1,image_angle,image_blend,image_alpha);
if(color_get_value(image_blend) < 128)
{
	draw_set_colour(c_white);
}
else
{
	draw_set_colour(c_black);
}

draw_set_alpha(image_alpha);