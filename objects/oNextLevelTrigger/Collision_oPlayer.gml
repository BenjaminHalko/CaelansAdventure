/// @desc
if(!instance_exists(oSignPost) or (oSignPost.phase >= 8))
{
	if(trigger)
	{
		if(global.completed) or (global.forWebsite)
		{
			SlideTransistion(TRANS_MODE.NEXT);
			global.onoff = false;
			if(global.forWebsite)
			Save("Info","Room",room+1);
		}
		else
		{
			SlideTransistion(TRANS_MODE.GOTO,rMenu);
			Save("Time","Locked",true);
			Save("Time","Last Played",current_day);
			Save("Info","Room",room+1);
		}
		global.airshipdoor = noone;
	}
	trigger = false;
}