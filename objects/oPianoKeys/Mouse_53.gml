/// @desc
if(instance_exists(oPiano))
{
	if(correct) and (!oPiano.playing) and (MouseHovering())
	{
		oPiano.clicked = true;
		oPiano.keyclicked = id;
	}
}