/// @description Size variables and mode setup

display_set_gui_size(window_get_width(),window_get_height());
w = display_get_gui_width();
h = display_get_gui_height();
enum TRANS_MODE
{
	OFF,
	NEXT,
	PREVIOUS,
	GOTO,
	RESTART,
	INTRO,
	QUIT
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
percentspd = 10;
xx = x;
yy = y;