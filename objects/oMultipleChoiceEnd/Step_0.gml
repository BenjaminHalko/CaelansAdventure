/// @desc
if(!instance_exists(oTest))
{
	instance_destroy();
}
else if(question != oTest.question)
{
	if(!alpha)
	{
		image_alpha = Approch(image_alpha,0,oTest.objectalphafade);
		if(image_alpha == 0) instance_destroy();
	}
	else if(!instance_exists(oSoundButton)) and ((!instance_exists(oTestWrittenQuestion)) or (oTestWrittenQuestion.index != noone))
	{
		SetAlarm(1,number*room_speed/6+1);
	}
	else
	{
		SetAlarm(1,(number-1)*room_speed/6+1);
	}
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
	
	hsp = Approch(hsp,0,1);
	vsp = Approch(vsp,0,1);
	
	if(!red)
	{
		if(xstart != x) or (ystart != y)
		{
			SetAlarm(2,room_speed);
		}
	
		if(active) and (otheralpha != -1) otheralpha = Approch(otheralpha,1,0.05);
	}
}