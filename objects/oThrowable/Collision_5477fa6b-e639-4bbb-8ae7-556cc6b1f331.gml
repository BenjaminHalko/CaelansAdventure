/// @desc
if(oEvilRoomBoss.alarm[2] <= 0) and (oEvilRoomBoss.alarm[3] <= 0)
{
	oEvilRoomBoss.alarm[3] = oEvilRoomBoss.playerfreeze;
	oPlayer.hascontrol = false;
}