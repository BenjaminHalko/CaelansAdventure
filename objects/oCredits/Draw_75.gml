/// @desc
var shadowx = 5;
var shadowy = 1;
var shadowz = 0.04;
var shadowalpha = 0.6;
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var gw = display_get_gui_width();
var gh = display_get_gui_height();

display_set_gui_size(960,540);
var drawy = texty+sprite_get_height(sTitle)/2+shadowy;
draw_sprite_ext(sTitle,global.annaramode,display_get_gui_width()/2+shadowx,drawy+(shadowz*(drawy-(display_get_gui_height()/2))),1,1,0,c_black,shadowalpha);
draw_sprite(sTitle,global.annaramode,display_get_gui_width()/2,texty+sprite_get_height(sTitle)/2);

for(var i = 0; i < array_length_1d(text); i++)
{
	draw_set_font(font[i]);
	var fontsize = font_get_size(font[i]);
	var drawy = texty+sprite_get_height(sTitle)+yspacing[i]+shadowy;
	draw_text_transformed_color(display_get_gui_width()/2+shadowx,drawy+(shadowz*(drawy-(display_get_gui_height()/2))),text[i],size[i]/fontsize,size[i]/fontsize,0,c_black,c_black,c_black,c_black,shadowalpha);
	
	draw_set_colour(c_white);
	draw_text_transformed(display_get_gui_width()/2,drawy-shadowy,text[i],size[i]/fontsize,size[i]/fontsize,0);
}
display_set_gui_size(gw,gh);