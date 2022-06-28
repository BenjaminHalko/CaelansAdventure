/// @desc
radius = 0;
var scale = display_get_gui_width()/camera_get_view_width(view_camera[0]);
xx = (mouse_x-camera_get_view_x(view_camera[0]))*scale;
yy = (mouse_y-camera_get_view_y(view_camera[0]))*scale;
alpha = 1;