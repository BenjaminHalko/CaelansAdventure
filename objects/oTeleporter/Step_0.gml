/// @desc
if(!instance_exists(oTestDoor)) and (instance_exists(oPlayer))
{
	oPlayer.hascontrol = false;
	if(!instance_exists(oExplosion))
	{
		oPlayer.hascontrol = false;
		
		if(room == rCastleNight) 
		{
			PlaySong(noone,false);
		}
		
		if(!audio_is_playing(mIcon))
		{
			audio_play_sound(mIcon,5,false);
		}
		iconalpha = Approch(iconalpha,1,1/spd);
		icony = Approch(icony,iconyfinish,iconyfinish/spd);
		
		if(iconalpha == 1) and (icony == iconyfinish)
		{
			SetAlarm(0,room_speed);
			Rumble();
		}
		iconrotation -= 5;
	}
}