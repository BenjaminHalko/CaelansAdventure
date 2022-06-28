/// @desc
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_font(fCredits);
draw_set_valign(fa_top);
draw_sprite(sTitle,0,room_width/2,texty+sprite_get_height(sTitle)/2);
draw_text(room_width/2,texty+(sprite_get_height(sTitle))+margin,text);