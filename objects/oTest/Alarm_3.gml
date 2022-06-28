/// @desc
backvisible = !backvisible;

if(backvisible)
{
	audio_play_sound(snTestStatic,1,true);
}
else
{
	audio_stop_sound(snTestStatic);
}