/// @desc
texty -= textspd*spd;

Inputs();
if((key_enter) or (key_back)) and (spd == 1)
{
	var s = (maxlength-(maxlength/alarm[0]))/room_speed;
	spd = s;
	audio_sound_pitch(mCredits,s);
	SlideTransistion(TRANS_MODE.GOTO,rOptions);
}