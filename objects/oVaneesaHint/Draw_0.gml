/// @desc
if(pause)
{
	var cam = view_camera[0];
	draw_sprite_stretched(PauseBack,0,camera_get_view_x(cam),camera_get_view_y(cam),camera_get_view_width(cam),camera_get_view_height(cam));
	draw_self();
}