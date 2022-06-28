/// @desc
var x1 = 0;
var y1 = 0;

var w = display_get_gui_width();
var h = display_get_gui_height();

var x2 = x1 + w;
var y2 = y1 + h;

draw_set_alpha(backcol);
draw_set_colour(c_red);
draw_rectangle(x1,y1,x2,y2,false);
draw_set_alpha(1);
if(backvisible)
draw_sprite_ext(sTestDoorScreen,screenindex,x1,y1,1,1,0,c_white,1);