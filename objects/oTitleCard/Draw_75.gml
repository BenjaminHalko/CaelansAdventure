/// @desc
var w = display_get_gui_width();
var h = display_get_gui_height();
draw_set_color(topcolour[global.character]);
draw_set_alpha(0.5);
draw_rectangle(0,0,w/4,h*barheight,false);
draw_set_color(bottomcolour[global.character])
draw_rectangle(0,h-(h/4)*barheight,w,h,false);
draw_set_alpha(1);
draw_sprite_ext(sTitle,global.annaramode,256,128,0.5,0.5,0,c_white,barheight);
draw_set_font(fMenu);
draw_set_colour(c_white)
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_alpha(barheight);
draw_text(w-(w/5),h-(h/6),text);
draw_set_alpha(1);