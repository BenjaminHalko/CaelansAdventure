/// @desc
if(!instance_exists(oTest))
{
	instance_destroy();
}
else if(question != oTest.question)
{
	image_alpha = Approch(image_alpha,0,oTest.objectalphafade);
	if(image_alpha == 0) instance_destroy();
}
else
{
	var camera = view_get_camera(0);

	var x1 = camera_get_view_x(camera);
	var y1 = camera_get_view_y(camera);

	var w = camera_get_view_width(camera);
	var h = camera_get_view_height(camera);

	x = (x1+(w/2));
	y = y1+h/3+h/10+h/5;

	image_xscale = w/display_get_gui_width();
	image_yscale = h/display_get_gui_height();

	image_index = MouseHovering();

	image_alpha = Approch(image_alpha,1,oTest.objectalphafade);
}