/// @desc
var w = display_get_gui_width();
var h = display_get_gui_height();

draw_set_colour(c_aqua);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fTestQuestion);
var width = string_width(textquestion);
var height = string_height(textquestion);

var scaletext = min(1,(800*(display_get_gui_height()/960)/max(width,height)));
if(index != noone) and (sprite_index = sTestImages)
{
	if((index >= 40) and (index <= 44)) or ((index >= 49) and (index <= 54)) or (index == 65)
	var scale = min(1,800*(display_get_gui_height()/960)/(length[index]));
	else
	var scale = 1;
	draw_sprite_ext(sTestImages,index,w/2,h/3+h/8+h/40+96+string_height(textquestion)*scaletext,scale,scale,0,image_blend,image_alpha);
}



draw_text_transformed(w/2-(string_width(textquestion)*scaletext/2),h/3+h/8+h/40,textquestiondraw,scaletext,scaletext,0);