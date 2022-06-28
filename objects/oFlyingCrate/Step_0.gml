/// @desc
if(!moving)
{
	image_xscale = Approch(image_xscale,scale,scalespd);
	image_yscale = image_xscale;
	SetAlarm(0,movingdelay);
	if(oFlyingShip.phase == 3) or (oFlyingShip.phase == 4) y = oPlane.y;
}
else
{
	if(place_meeting(x+hsp,y,oPlane))
	{
		oPlane.x += hsp;
		oPlayer.x += hsp;
	}
	x += hsp;
}