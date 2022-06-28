/// @description Set Up Camera
cam = view_camera[0];
follow = oPlayer;
if(room == rFinalBossEvilChrisFight)
follow = oCameraCenter;
normal_view_w = camera_get_view_width(cam);
normal_view_h = camera_get_view_height(cam);
credits_view_w = 600;
credits_view_h = credits_view_w/(1920/1080);
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
view_h_border = room_height - (buff*2);

x = follow.x;
y = follow.y;

zoomspd = room_speed;
view_w_zoomspd = point_distance(normal_view_w,0,view_w_border,0)/zoomspd;
view_h_zoomspd = point_distance(0,normal_view_h,0,view_h_border)/zoomspd;
mode = 0;
fullscreen = false;

ratio = 1920/1080;
yy = y;
floatmargin = 32;
floatspd = 3;

xoffset = 0;
yoffset = 0;

locky = false;
deactivator = instance_exists(oWater);

drawx = 0;
drawy = 0;

if(!instance_exists(oBackgroundManager))
{
	var manage = instance_create_layer(x,y,layer,oBackgroundManager);
	manage.lay = "Trees";
	var manage = instance_create_layer(x,y,layer,oBackgroundManager);
	manage.lay = "Mountains";
}