/// @description Size variables and mode setup
depth = -10000000000000000000;
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
percentspd = 0;
flash = false;
flashscreen = false;
xx = x;
yy = y;
iconrotation = 0;
iconx = xx;
icony = yy;
iconxstart = iconx;
iconystart = icony;
quitmode = false;
cameraxprevious = 0;
camerayprevious = 0;