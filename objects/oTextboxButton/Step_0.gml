/// @desc
if(!instance_exists(oTextbox)) instance_destroy();

var camera = view_get_camera(0);

var x1 = camera_get_view_x(camera);
var y1 = camera_get_view_y(camera);

var w = camera_get_view_width(camera);
var h = camera_get_view_height(camera);

var y2 = y1 + h;

x = (x1+(w/2));
y = y2-(h/4);

image_xscale = w/display_get_gui_width();
image_yscale = h/display_get_gui_height();