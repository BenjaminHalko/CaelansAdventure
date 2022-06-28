/// @description Update Camera

//Update Destination
if (instance_exists(follow))
{
	xTo = follow.x+xoffset;
	yTo = follow.y+yoffset;
}

//Update object position
if(mode == 0)
{
	x += (xTo - x) / 15;
	y += (yTo - y) / 15;
}
else if (mode == 1)
{
	x = Approch(x,xTo,abs((room_width/2)-xTo)/zoomspd);
	y = Approch(y,yTo,abs((room_height/2)-yTo)/zoomspd);
	
	if(room_width >= room_height)
	{
		view_w = Approch(view_w,normal_view_w,view_w_zoomspd);
		view_h = view_w/ratio;
	}
	else
	{
		view_h = Approch(view_h,normal_view_h,view_h_zoomspd);
		view_w = view_h*ratio;
	}
	
	if(x == xTo) and (y == yTo) and (view_w == normal_view_w) and (view_h == normal_view_h)
	{
		mode = 0;
	}
}
else if(mode == 2)
{
	x = Approch(x,room_width/2,abs((room_width/2)-xTo)/zoomspd);
	y = Approch(y,room_height/2,abs((room_height/2)-yTo)/zoomspd);
	
	if(room_width >= room_height)
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

view_w_half = view_w*0.5;
view_h_half = view_h*0.5;

camera_set_view_size(cam,view_w,view_h);

//Change Fullscreen
if(fullscreen)
{
	mode = 2;
}
else if(mode != 0)
{
	mode = 1;
}

//Keep camera center inside room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//Screen Shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if(!fullscreen)
{
	if (layer_exists("Mountains"))
	{
		layer_x("Mountains",x/1.25);
		layer_y("Mountains",y/1.25-64);
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
		layer_x("Trees",x/4);
		layer_y("Trees",y/1.5);
	}

	if (layer_exists("Stars"))
	{
		layer_x("Stars",x/1.1);
		layer_y("Stars",y/1.1);
	}

	if (layer_exists("CloudsTop"))
	{
		layer_y("CloudsTop",(y-512)/1.1);
	}

	if (layer_exists("CloudsBottom"))
	{
		layer_y("CloudsBottom",y/1.1);
	}
}
else
{
	if (layer_exists("Mountains"))
	{
		layer_y("Mountains",room_height-768);
	}
	
	if (layer_exists("CloudsTop"))
	{
		layer_y("CloudsTop",0);
	}
}