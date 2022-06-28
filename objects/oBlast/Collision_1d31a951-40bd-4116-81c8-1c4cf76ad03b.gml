/// @desc
if(!instance_exists(oHauntedHouseBoss)) and (alarm[2] <= 0) and (oHauntedHouseBoss.phase != 9) and (alarm[3] <= 0) and (!oHauntedHouseBoss.hitplayer) and (oPlayer.hascontrol)
{
	oPlayer.hascontrol = false;
	oHauntedHouseBoss.hitplayer = true;
	oHauntedHouseBoss.hitplayertime = oHauntedHouseBoss.alarm[1];
}