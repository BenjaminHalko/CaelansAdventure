/// @desc
var x1 = 0;
var y1 = 0;

var w = display_get_gui_width();
var h = display_get_gui_height();

var x2 = x1 + w;
var y2 = y1 + h;

draw_set_colour(backgroundcolour[mode]);
draw_set_alpha(0.5);
draw_rectangle(x1,y1,x2,y2-1,false);
if(mode != 0)
{
	draw_sprite_ext(sTestBackground,mode-1,x1,y1,window_get_width()/1920,window_get_height()/1080,0,backgroundcolour[mode],alpha);
}
draw_set_alpha(1);

if(!destroy)
{
	draw_set_valign(fa_top);
	draw_set_colour(c_black);
	draw_set_halign(fa_left);
	draw_set_font(fTestDescription);
	draw_text(w/2-(string_width(description)/2),h/10,textdescription);
}