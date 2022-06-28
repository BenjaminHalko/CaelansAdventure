/// @desc
if(!instance_exists(oPiano))
{
	if(!alpha)
	{
		image_alpha = Approch(image_alpha,0,oTest.objectalphafade);
		if(image_alpha == 0) instance_destroy();
	}
	else
	{
		SetAlarm(1,(number+row)*room_speed/10+1);
	}
}
else
{
	var camera = view_get_camera(0);

	var x1 = camera_get_view_x(camera);
	var y1 = camera_get_view_y(camera);

	var w = camera_get_view_width(camera);
	var h = camera_get_view_height(camera);

	var y2 = y1 + h;

	x = (x1+(w/2))-(6*32)+(number*32);
	y = y2-(h/3)+(row*(sprite_height+8));

	if(!oPiano.playing)
	{
		correct = note == oPiano.notepitch[oPiano.notenumber];
	}
	
	image_xscale = w/display_get_gui_width()*2;
	image_yscale = h/display_get_gui_height()*2;
}

if(alpha)
image_alpha = Approch(image_alpha,1,oTest.objectalphafade);