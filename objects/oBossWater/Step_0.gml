/// @desc
if(!surface_exists(water_surface)) and (!instance_exists(oTest)) {
    water_surface = surface_create( 81 * ratio, 81 * ratio );
}

if(loaded)
{
	y = Approch(y,ystart-760,10);
	if(y != ystart-760)
	{
		ScreenShake(10,5);
		Rumble();
	}
}
else
{
	y = Approch(y,ystart,10);
	if(y != ystart)
	{
		ScreenShake(10,5);
		Rumble();
	}
}