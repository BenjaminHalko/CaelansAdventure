/// @desc
if(instance_exists(oPiano))
{
	if(!correct) and (!oPiano.playing) and (oPiano.keyclicked == id)
	{
		oPiano.clicked = false;
		audio_stop_sound(notemusic);
	}
}