/// @desc
if(!instance_exists(oPiano)) instance_destroy();
else
{
	var camera = view_get_camera(0);

	var x1 = camera_get_view_x(camera);
	var y1 = camera_get_view_y(camera);

	var w = camera_get_view_width(camera);
	var h = camera_get_view_height(camera);

	var y2 = y1 + h;

	x = (x1+(w/2))-(((amount-1)/2)*32)+((number-1)*32);
	y = y2-(h/4);

	if(!oPiano.playing)
	{
		correct = note == oPiano.notepitch[oPiano.notenumber];
	}

}