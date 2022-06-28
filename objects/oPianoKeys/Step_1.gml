/// @desc
if(instance_exists(oPiano))
{
	if(MouseHovering()) and (image_blend != (oPiano.keyclickedcolour[false]))
	{
		image_blend = oPiano.keyhoveredcolour;
	}
	else
	{
		image_blend = make_colour_rgb(0,127,255);
	}
}