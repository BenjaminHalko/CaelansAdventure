/// @desc
if(!finalattack)
{
	with(oEvilRoomBoss)
	{
		if(playerallowhit)
		{
			oPlayer.hascontrol = true;
			alarm[3] = -1;
			playerallowhit = false;
			alarm[2] = playerinvinciblity;
			playerhealth--;
			if(playerhealth <= 0)
			{
				SlideTransistion(TRANS_MODE.PREVIOUS);
			}
		}
	}
}