/// @desc
var x1 = 0;
var y1 = 0;

var w = display_get_gui_width();
var h = display_get_gui_height();

var y2 = y1 + h;

draw_sprite_ext(sprite_index,image_index,(x1+(w/2)),y2-(h/4)+(h/15)+h/40,1,1,image_angle,image_blend,image_alpha);
draw_set_colour(c_aqua);

draw_set_alpha(image_alpha);
draw_set_font(fTestAnswer);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var width = string_width("Answer");
var height = string_height("Answer");

var scale = 175/max(width,height);
draw_text_transformed((x1+(w/2)),y2-(h/4)+(h/15)+h/40,"Answer",scale,scale,0);
draw_set_alpha(1);