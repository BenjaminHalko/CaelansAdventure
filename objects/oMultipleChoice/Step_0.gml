/// @desc
if(!instance_exists(oTest)) instance_destroy();
else if(question != oTest.question) instance_destroy();

var camera = view_get_camera(0);

var y1 = camera_get_view_y(camera);

var w = camera_get_view_width(camera);
var h = camera_get_view_height(camera);

var y2 = y1 + h;

x = (oCamera.x)-(((amount-1)/2)*(160*image_xscale))+((number-1)*(160*image_xscale));
y = y2-(h/4);

image_xscale = w/display_get_gui_width();
image_yscale = h/display_get_gui_height();