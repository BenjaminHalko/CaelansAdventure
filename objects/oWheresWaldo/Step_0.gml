/// @desc
if(!instance_exists(oTest))
{
	instance_destroy();
}
else if(question != oTest.question)
{
	alpha = Approch(alpha,0,oTest.objectalphafade);
	if(alpha == 0) instance_destroy();
}
else
{
	var camera = view_get_camera(0);

	var w = camera_get_view_width(camera);
	var h = camera_get_view_height(camera);

	if(expand)
	{
		scale += 0.025;
		image_alpha -= 0.02;
	}
	else
	{
		alpha = Approch(alpha,1,oTest.objectalphafade);
	}

	image_xscale = (w/display_get_gui_width())*scale;
	image_yscale = (h/display_get_gui_height())*scale;
}