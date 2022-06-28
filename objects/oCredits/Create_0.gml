/// @desc
Credits();
tl = yspacing[array_length_1d(text)-1] + size[array_length_1d(text)-1];
texty = room_height+10;
margin = 10;

if(oGlobalController.previousroom == rSecret)
{
	length = audio_sound_length(mCredits);
}
else
{
	length = audio_sound_length(mCredits) - audio_sound_get_track_position(oGlobalController.musicplaying);
}

textspd = (tl+room_height+((texty - room_height)*2)+sprite_get_height(sTitle)+margin)/(length*room_speed);

alarm[0] = length*room_speed;
depth = -100000000000000000000;