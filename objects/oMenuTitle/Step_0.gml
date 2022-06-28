/// @desc
if(phase == 0)
{
	image_alpha = Approch(image_alpha,1,spd);
	image_xscale = Approch(image_xscale,0.8,spd);
	image_yscale = Approch(image_yscale,0.8,spd);
}
else if (phase == 1)
{
	image_xscale = Approch(image_xscale,0.5,spd);
	image_yscale = Approch(image_yscale,0.5,spd);
	
	x = Approch(x,196,point_distance(room_width/2,0,196,0)*spd);
	y = Approch(y,100,point_distance(0,room_height/2,0,100)*spd);
	
	if(image_xscale == 0.5) and (x == 196) SetAlarm(0,room_speed/2);
}
else if(phase == 2)
{
	iconalpha = Approch(iconalpha,0.5,spd);
	if(!instance_exists(oMenu))
	{
		instance_create_layer(64,320,"Menu",oMenu);
	}
	iconscale = Wave(10,15,7,0);
}
else if(phase == 3)
{
	iconscale = Approch(iconscale,1,0.2);
	if(iconscale == 1)
	{
		phase = 4;
	}
}
else if(phase == 4)
{
	iconscale = Approch(iconscale,200,0.5*(max(1,iconscale/20)));
	Rumble();
	if(iconscale == 200)
	{
		var rm = Load("Info","Room",rHouse);
		SlideTransistion(TRANS_MODE.GOTO,rm)
		phase = 5;
	}
}

iconrotation += 1;

if(phase >= 2) 
{
	image_xscale = Approch(image_xscale,Wave(0.5,0.4,2,0),0.005);
	image_yscale = Approch(image_yscale,Wave(0.5,0.4,2,0),0.005);
}