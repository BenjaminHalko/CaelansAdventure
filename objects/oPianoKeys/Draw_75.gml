/// @desc
var x1 = 0;
var y1 = 0;

var w = display_get_gui_width();
var h = display_get_gui_height();

var y2 = y1 + h;

draw_sprite_ext(sprite_index,image_index,(x1+(w/2))-(((amount-1)/2)*64)+((number-1)*64),y2-(h/4),2,2,image_angle,image_blend,image_alpha);