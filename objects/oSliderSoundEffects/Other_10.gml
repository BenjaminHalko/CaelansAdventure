/// @desc
audio_group_set_gain(agSoundEffects,value_,1);
Save("Settings","Sound Effects Volume",value_);
if(alarm[1] <= 0) and (key_left or key_right)
{
	sound = audio_play_sound(snLanding,2,false);
	alarm[1] = 10;
}