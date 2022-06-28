/// @desc
var w = display_get_gui_width();
var h = display_get_gui_height();

draw_set_colour(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fTestQuestion);
if(index != noone)
{
	draw_sprite_ext(sTestImages,index,w/2,h/3+64+string_height(textquestion),1,1,0,image_blend,image_alpha);
}

draw_set_alpha(image_alpha);
draw_text(w/2-(string_width(textquestion)/2),h/3,textquestiondraw);
draw_set_alpha(1);