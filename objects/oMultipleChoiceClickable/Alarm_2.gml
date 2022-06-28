/// @desc
if(instance_number(oMultipleChoiceBouncing) < 50) and (phase == 4)
{
	var margin = 64*image_xscale;
	var xx = choose(camera_get_view_x(view_camera[0])-margin,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+margin);
	var yy = choose(camera_get_view_y(view_camera[0])-margin,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+margin);

	instance_create_depth(xx,yy,depth+1,oMultipleChoiceBouncing);
}