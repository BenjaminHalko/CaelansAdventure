/// @desc
x = creator.x;
y = creator.y;
image_xscale = creator.image_xscale;

activated = false;

if(place_meeting(x,y,oPlayer))
{
	if(!reset)
	{
		activated = true;
		reset = true;
	}
}
else
{
	reset = false;
}