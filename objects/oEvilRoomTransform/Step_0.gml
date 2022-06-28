/// @desc

event_inherited();

if(!active)
{
	if(!starting)
	{
		y = Approch(y,ystart,1);
	}
	else
	{
		if(oPlayer.x >= x-256)
		{
			starting = false;
			SetAlarm(0,room_speed/2);
			oPlayer.hascontrol = false;
			oGlobalController.pause = true;
		}
	
		y = Wave(ystart-8,ystart+8,3,0);
	}
}
else
{
	oGlobalController.pause = false;
	PlaySong(mEvilChris,true);
	pitch = 0.35;
	audio_sound_pitch(oGlobalController.musicplaying,pitch);
}

if(ending)
{
	if(sprite_index != sEvilRoomBossRoar)
	{
		sprite_index = sEvilRoomBossRoar;
		audio_play_sound(vEvilRoomFinalBoss6,1,false);
		image_speed = 1;
	}
	
	SetAlarm(1,room_speed/2);
}