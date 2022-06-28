/// @desc
if(purplespringjump) or (room == rCastle)
{
	if(oTransition.mode == TRANS_MODE.OFF)
	SlideTransistion(TRANS_MODE.NEXT);
}
else if(!instance_exists(oSignPost))
{
	if((x < 0) and (room == rAirshipNightOutside)) or (x >= room_width and room == rUndergroundNight)
	SlideTransistion(TRANS_MODE.NEXT);
	else
	SlideTransistion(TRANS_MODE.GOTO,room);
}
else if(oSignPost.phase < 1) and (room != rAirshipBoss)
{
	SlideTransistion(TRANS_MODE.GOTO,room);
}