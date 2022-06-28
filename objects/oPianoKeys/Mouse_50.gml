/// @desc
if(instance_exists(oPiano))
{
	if(!correct) and (!oPiano.playing) and (MouseHovering())
	{
		if(!audio_is_playing(snPianoSoundWrong))
		{
			oPiano.clicked = true;
			oPiano.keyclicked = id;
			notemusic = audio_play_sound(snPianoSoundWrong,1,true);
			audio_sound_pitch(notemusic,note/440);
		}
	}
}