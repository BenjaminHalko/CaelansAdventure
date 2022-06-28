/// @desc Record

if(room != rInt)
{
	Inputs();
	//Keyboard Keys
	record_key_left[frames] = key_left;
	record_key_right[frames] = key_right;
	record_key_jump[frames] = key_jump;

	frames++;
	
	if(frames >= 30000)
	event_perform(ev_other,ev_game_end);
	
	if(!audio_is_playing(mCredits)) and (frames > 200)
	{
		SlideTransistion(TRANS_MODE.QUIT);
	}
}