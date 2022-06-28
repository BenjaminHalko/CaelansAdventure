/// @desc
if(trigger)
{
	SlideTransistion(TRANS_MODE.GOTO,rMenu);
	Save("Time","Locked",true);
	Save("Time","Last Played",date_create_datetime(current_year,current_month,current_day,0,0,0));
}
trigger = false;