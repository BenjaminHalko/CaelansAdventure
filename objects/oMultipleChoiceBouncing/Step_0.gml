/// @desc
if(!instance_exists(oTest))
{
	instance_destroy();
}
else if(question != oTest.question) or ((instance_exists(oMultipleChoiceClickable)) and (oMultipleChoiceClickable.phase != 4))
{
	image_alpha = Approch(image_alpha,0,oTest.objectalphafade);
	if(image_alpha == 0) instance_destroy();
}
else
{
	var camera = view_camera[0];
	
	var w = camera_get_view_width(camera);
	var h = camera_get_view_height(camera);
	
	image_xscale = w/display_get_gui_width();
	image_yscale = h/display_get_gui_height();
	
	var m = 40;
	var dir = point_direction(mouse_x,mouse_y,x,y);
	var len = (m-min(m,point_distance(mouse_x,mouse_y,x,y)))
	hsp += lengthdir_x(len,dir)*1.5;
	vsp += lengthdir_y(len,dir)*1.5;
	
	if(x < camera_get_view_x(view_camera[0])+32*image_xscale)
	{
		hsp = abs(hsp);
	}
	
	if(x > camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32*image_xscale)
	{
		hsp = -abs(hsp);
	}
	
	if(y < camera_get_view_y(view_camera[0])+32*image_yscale)
	{
		vsp = abs(vsp);
	}
	
	if(y > camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32*image_yscale)
	{
		vsp = -abs(vsp);
	}
	
	x += hsp;
	y += vsp;
}