/// @description Progress Text

letters += spd;
text_current = string_copy(text,1,floor(letters));
clamp(letters,0,length);
draw_set_font(fSign);
if(h==0) h = string_height(text);
w = string_width(text_current);

if(instance_exists(oPlayer))
{
	if(letters > length) and !(point_in_circle(oPlayer.x,oPlayer.y,x,y,128)) and (creator != noone)
	{
		instance_destroy();
		with(oCamera) follow = oPlayer;
	}
}

if(text_previous != text_current)
{
	text_previous = text_current;
	if(global.retrovoice) and (!global.credits)
	{
		var sound = audio_play_sound(snTalk,1,false);
		audio_sound_pitch(sound,1.5);
	}
}