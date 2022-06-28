/// @desc
if(char >= string_length(text)) and (firststart)
{
	firststart = false;
	SlideTransistion(TRANS_MODE.GOTO,rHouse);
	if(!audio_is_playing(mIcon))
	{
		var sound = audio_play_sound(mIcon,1,false);
		audio_sound_gain(sound,0,4500);
	}
}