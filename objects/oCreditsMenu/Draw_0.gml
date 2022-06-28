/// @desc
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_colour(c_white);

draw_sprite(sTitle,global.annaramode,room_width/2,texty+sprite_get_height(sTitle)/2);

for(var i = 0; i < array_length_1d(text); i++)
{
	draw_set_font(font[i]);
	var fontsize = font_get_size(font[i]);
	var drawy = texty+sprite_get_height(sTitle)+yspacing[i];
	draw_text_transformed(room_width/2,drawy,text[i],size[i]/fontsize,size[i]/fontsize,0);
}