/// @desc
if(instance_exists(oHauntedHouseBoss)) and (oHauntedHouseBoss.phase != 9) and (!oHauntedHouseBoss.hitplayer)
{
	oPlayer.hascontrol = false;
	oHauntedHouseBoss.hitplayer = true;
	oHauntedHouseBoss.hitplayertime = oHauntedHouseBoss.alarm[1];
}