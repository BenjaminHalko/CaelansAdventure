/// @desc
var x1 = 0;
var y1 = 0;

var w = display_get_gui_width();
var h = display_get_gui_height();

var y2 = y1 + h;

draw_sprite_ext(sprite_index,image_index,(x1+(w/2))-(((amount-1)/2)*160)+((number-1)*160),y2-(h/5),1,1,image_angle,image_blend,image_alpha);
if(color_get_value(image_blend) < 128)
{
	draw_set_colour(c_white);
}
else
{
	draw_set_colour(c_black);
}

draw_set_alpha(image_alpha);
draw_set_font(fTestAnswer);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var width = string_width(text);
var height = string_height(text);

var scale = (200*image_xscale)/max(width,height);
draw_text_transformed((x1+(w/2))-(((amount-1)/2)*160)+((number-1)*160),y2-(h/5),text,scale,scale,0);
draw_set_alpha(1);