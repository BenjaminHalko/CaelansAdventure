/// @desc
if(!deactivated)
{
	switch(room)
	{
		case rAirshipOutside:
		{
			SlideTransistion(TRANS_MODE.GOTO,rAirshipInside);
			break;
		}
		case rAirshipInside:
		{
			SlideTransistion(TRANS_MODE.GOTO,rAirshipOutside);
			break;
		}
		case rAirshipNightOutside:
		{
			SlideTransistion(TRANS_MODE.GOTO,rAirshipNightInside);
			break;
		}
		case rAirshipNightInside:
		{
			SlideTransistion(TRANS_MODE.GOTO,rAirshipNightOutside);
			break;
		}
	}
	room_persistent = true;
	global.airshipdoor = doornumber;
	phase++;
	deactivated = true;
}