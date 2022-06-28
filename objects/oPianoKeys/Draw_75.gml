/// @desc
var x1 = 0;
var y1 = 0;

var w = display_get_gui_width();
var h = display_get_gui_height();

var y2 = y1 + h;

draw_sprite_ext(sprite_index,0,(x1+(w/2))-(6*64)+(number*64),y2-(h/3)+(row*(sprite_height+8)*2),2,2,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprite_index,1,(x1+(w/2))-(6*64)+(number*64),y2-(h/3)+(row*(sprite_height+8)*2),2,2,image_angle,c_white,image_alpha);