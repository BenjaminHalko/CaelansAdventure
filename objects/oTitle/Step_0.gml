/// @desc
if(phase == 1)
{
	iconalpha = Approch(iconalpha,0.5,alphaspd);
	if(iconalpha == 0.5) SetAlarm(0,room_speed*3); 
}
if(phase == 2)
{
	iconalpha = Approch(iconalpha,0,alphaspd);
	if(iconalpha == 0) SetAlarm(0,room_speed/2); 
}
if(phase == 3)
{
	image_alpha = Approch(image_alpha,0,alphaspd*2);
	if(image_alpha == 0) SlideTransistion(TRANS_MODE.NEXT);
}

iconrotation += 1;
iconscale = Wave(10,15,7,0);