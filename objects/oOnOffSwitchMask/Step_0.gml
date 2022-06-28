/// @desc
if(place_meeting(x,y,oPlayer))
{
	if(hittable)
	{
		global.onoff = !global.onoff;
		hittable = false;
	}
}
else
{
	hittable = true;
}