/// @description Update Camera

//Update Destination
if (instance_exists(follow))
{
	if(room != rAirshipBoss)
	{
		xTo = follow.x+xoffset;
		yTo = follow.y+yoffset;
	}
	else
	{
		xTo = min(x,follow.x-view_w_half/2);
		yTo = room_height/2;
		y = yTo;
	}
	
	if(locky)
	{
		yTo = oCameraCenter.y+yoffset;
	}
	
}

//Update object position
if(instance_exists(oReplay))
{
	x += (xTo - x) / 10;
	y += (yTo - y) / 10;
		
	yoffset = -25;
	xoffset = Approch(xoffset,(credits_view_w/3) * oPlayer.image_xscale,10);
		
	view_w = credits_view_w;
	view_h = credits_view_h;
}
else if(mode == 0)
{
	x += (xTo - x) / 15;
	if(room != rAirshipOutside) and (room != rAirshipNightOutside) and (room != rFinalBossAirship)
	{
		y += (yTo - y) / 15;
	}
	else
	{
		yy += (yTo - yy) / 15;
		y = Wave(yy-floatmargin,yy+floatmargin,floatspd,0);
	}
}
else if (mode == 1)
{
	x = Approch(x,xTo,abs((room_width/2)-xTo)/zoomspd);
	y = Approch(y,yTo,abs((room_height/2)-yTo)/zoomspd);
	
	if(view_h_border*ratio < view_w_border/ratio)
	{
		view_w = Approch(view_w,normal_view_w,view_w_zoomspd);
		view_h = view_w/ratio;
	}
	else
	{
		view_h = Approch(view_h,normal_view_h,view_h_zoomspd);
		view_w = view_h*ratio;
	}
	
	if(clamp(x,view_w_half+buff,room_width-view_w_half-buff) == clamp(xTo,view_w_half+buff,room_width-view_w_half-buff)) and (clamp(y,view_h_half+buff,room_height-view_h_half-buff) == clamp(yTo,view_h_half+buff,room_height-view_h_half-buff)) and (view_w == normal_view_w) and (view_h == normal_view_h)
	{
		mode = 0;
	}
}
else if(mode == 2)
{
	x = Approch(x,room_width/2,abs((room_width/2)-xTo)/zoomspd);
	y = Approch(y,room_height/2,abs((room_height/2)-yTo)/zoomspd);
	
	if(view_h_border*ratio <= view_w_border/ratio) or (room == rAirshipNightInside)
	{
		view_w = Approch(view_w,view_w_border,view_w_zoomspd);
		view_h = view_w/ratio;
	}
	else
	{
		view_h = Approch(view_h,view_h_border,view_h_zoomspd);
		view_w = view_h*ratio;
	}
}
else if(mode == 3)
{
	x += (xTo - x) / 15;
	if(room != rAirshipOutside) and (room != rAirshipNightOutside) and (room != rFinalBossAirship)
	{
		y += (yTo - y) / 15;
	}
	else
	{
		yy += (yTo - yy) / 15;
		y = Wave(yy-floatmargin,yy+floatmargin,floatspd,0);
	}
		
	view_w = Approch(view_w,100,7);
	view_h = view_w/ratio;
		
	if(view_w == 100)
	{
		mode = 0;
		view_w = normal_view_w;
		view_h = normal_view_h;
	}
}

view_w_half = view_w*0.5;
view_h_half = view_h*0.5;

camera_set_view_size(cam,view_w,view_h);

//Change Fullscreen
if(fullscreen)
{
	mode = 2;
}
else if(mode != 0) and (mode != 3)
{
	mode = 1;
}

//Keep camera center inside room
if(room != rFinalBossEvilChrisFight)
{
	x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
	if(room != rAirshipBoss)
	y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);
}

//Screen Shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
if (room != rFinalBossEvilRoomDefeated)
{
	if(mode == 0) or (mode == 3) or true
	{
		if (layer_exists("Mountains"))
		{
			var lay_id = layer_get_id("Mountains");
			var back_id = layer_background_get_id(lay_id);
			var sprite = layer_background_get_sprite(back_id);
			var h = sprite_get_height(sprite);
			if(room != rFinalBossEvilChrisFight)
			layer_x("Mountains",x/1.25);
			
			if(mode == 1) or (mode == 2) and (!layer_background_get_vtiled(back_id))
			layer_y("Mountains",max(y/1.25-256,(room_height-h-128)*ValuePercent(view_w,normal_view_w,view_w_border)));
			else
			layer_y("Mountains",y/1.25-256);
			
		}

		if (layer_exists("Mountains1"))
		{
			layer_x("Mountains1",x/1.25);
		}

		if (layer_exists("Mountains2"))
		{
			layer_x("Mountains2",x/1.25);
		}

		if (layer_exists("Mountains3"))
		{
			layer_x("Mountains3",x/1.25);
		}

		if (layer_exists("MountainsDontScroll"))
		{
			layer_x("MountainsDontScroll",(x-view_w_half)/1.25);
		}

		if (layer_exists("MountainsDontScroll2"))
		{
			layer_x("MountainsDontScroll2",(x-view_w_half)/1.25);
		}

		if (layer_exists("Trees"))
		{
			var lay_id = layer_get_id("Trees");
			var back_id = layer_background_get_id(lay_id);
			var sprite = layer_background_get_sprite(back_id);
			var h = sprite_get_height(sprite);
			if(room != rFinalBossEvilChrisFight)
			layer_x("Trees",x/4);
			layer_y("Trees",max(y/1.25-128,(room_height-h-128)*ValuePercent(view_w,normal_view_w,view_w_border)));
		}

		if (layer_exists("Stars"))
		{
			layer_x("Stars",x/1.1);
			layer_y("Stars",y/1.1);
		}

		if(room != rAirshipBoss)
		{
			if (layer_exists("CloudsTop"))
			{
				layer_y("CloudsTop",((y-512)/1.1)*ValuePercent(view_w,view_w_border,normal_view_w));
			}

			if (layer_exists("CloudsBottom"))
			{
				layer_y("CloudsBottom",((y-512)/1.1)*ValuePercent(view_w,view_w_border,normal_view_w));
			}
		}
	}
}
if(deactivator) and (!audio_is_playing(mSecret))  and (!audio_is_playing(mHome))
{
	margin = 50;
	instance_deactivate_object(oWater);
	instance_activate_region(x-view_w_half-margin,-200,(view_w_half+margin)*2,room_height+400,true);
}