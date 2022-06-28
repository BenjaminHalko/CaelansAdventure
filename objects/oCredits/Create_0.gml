/// @desc
text = Credits();
draw_set_font(fCredits);
tl = string_height(text);
texty = room_height+10;
margin = 10;

textspd = (tl+room_height+((texty - room_height)*2)+sprite_get_height(sTitle)+margin)/(audio_sound_length(mCredits)*room_speed);

//alarm[0] = audio_sound_length(mCredits)*room_speed;

spd = 1;