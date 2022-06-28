/// @desc
if(screenshot)
{
	if(instance_exists(oPlayer))
	{
		var name = global.name[global.character];
	}
	else
	{
		var name = "";
	}
	
	if(instance_exists(oCamera))
	{
		if(oCamera.mode != 0) and (oCamera.mode != 3)
		{
				if(oCamera.view_h_border*oCamera.ratio < oCamera.view_w_border/oCamera.ratio) or (room == rAirshipNightInside)
				{
					var width = display_get_width();
					var height = (room_height-64)/(room_width-64)*display_get_width();
				}
				else
				{
					var height = display_get_height();
					var width = (room_width-64)/(room_height-64)*display_get_height();
				}
			screen_save_part(string(room_get_name(room))+name+"Map.png",display_get_width()-width,display_get_height()-height,width,height);
		}
		else
		{
			screen_save(string(room_get_name(room))+name+"Capture.png");
		}
	}
	else
	{
		screen_save(string(room_get_name(room))+name+"Capture.png");
	}
	
	screenshot = false;
}
else if(debug)
{
	draw_set_font(fDefault);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_fuchsia);
	
	draw_text(32,32,"F2 - Previous Room");
	draw_text(32,48,"F3 - Next Room");
	draw_text(32,64,"F4 - Restart Room");
	
	draw_text(32,96,"F5 - Delete Save Game");
	draw_text(32,112,"F6 - Delete Extras");
	
	draw_text(32,144,"F7 - Toggle Completed");
	draw_text(32,160,"F8 - Collect All Extras");
	draw_text(32,176,"F9 - Disable Time Lock");
	
	draw_text(32,208,"F10 - Screenshot");
	draw_text(32,224,"F11 - Gif Record");
	if(instance_exists(oCamera))
	draw_text(32,240,"F12 - Fullscreen");
}