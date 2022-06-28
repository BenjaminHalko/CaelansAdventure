/// @desc
if(!global.credits)
{
	with(oPlayer)
	{
		hascontrol = true;
		automove = false;
	}

	with(back)
	{
		instance_destroy();
	}
	
	with(mask)
	{
		instance_destroy();
	}
	
	with(lock)
	{
		instance_destroy();
	}
}

audio_stop_sound(snTestSiren);

if(audio_is_playing(mBoss))
{
	PlaySong("default",true);
}