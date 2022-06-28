/// @desc

Inputs();
if(keyboard_check(vk_space)) or (keyboard_check(vk_enter))
{
	spd = 3;
}
else
{
	spd = 1;
}

texty -= textspd*spd;
audio_sound_pitch(mCredits,spd);

if(!audio_is_playing(mCredits))
{
	SlideTransistion(TRANS_MODE.RESTART);
}