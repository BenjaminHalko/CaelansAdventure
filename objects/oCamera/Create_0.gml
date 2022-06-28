/// @description Set Up Camera
cam = view_camera[0];
follow = oPlayer;
normal_view_w = camera_get_view_width(cam);
normal_view_h = camera_get_view_height(cam);
view_w = normal_view_w;
view_h = normal_view_h;
view_w_half = view_w*0.5;
view_h_half = view_h*0.5;

xTo = xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

view_w_border = room_width-(buff*2);
view_h_border = room_height-(buff*2);

x = follow.x;
y = follow.y;

zoomspd = room_speed;
view_w_zoomspd = point_distance(normal_view_w,0,view_w_border,0)/zoomspd;
view_h_zoomspd = point_distance(0,normal_view_h,0,view_h_border)/zoomspd;
mode = 0;
fullscreen = false;

ratio = 1920/1080;
yy = y;

xoffset = 0;
yoffset = 0;