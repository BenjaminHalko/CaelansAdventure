/// @desc
if(global.completed) or ((room != rCastleNight) and (room != rFinalBossGrasslands)) or (global.forWebsite)
{
	SlideTransistionFlash(TRANS_MODE.NEXT,oPlayer.x,oPlayer.y-icony);
	if(global.forWebsite)
	Save("Info","Room",room+1);
}
else
{
	SlideTransistionFlash(TRANS_MODE.QUIT,oPlayer.x,oPlayer.y-icony);
	Save("Time","Locked",true);
	Save("Time","Last Played",current_day);
	Save("Info","Room",room+1);
}