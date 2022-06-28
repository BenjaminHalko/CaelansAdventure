/// @description Draw black bars

if (mode != TRANS_MODE.OFF)
{
	draw_set_colour(c_black);
	draw_set_alpha(percent);
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false);
	draw_set_alpha(1);
}