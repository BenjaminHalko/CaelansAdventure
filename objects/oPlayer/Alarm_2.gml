/// @desc
if(x > room_width)
{
	if(oSignPost.phase < 1)
	SlideTransistion(TRANS_MODE.GOTO,room);

	if(instance_exists(oFlyingShip))
	{
		if(oFlyingShip.phase > 2) oGlobalController.airshipphasesave = true;
	}
}