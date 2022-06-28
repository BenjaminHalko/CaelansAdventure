 /// @desc
Credits();
tl = yspacing[array_length_1d(text)-1] + size[array_length_1d(text)-1];
texty = room_height+10;
margin = 10;
timesspd = 3;

textspd = (tl+room_height+((texty - room_height)*2)+sprite_get_height(sTitle)+margin)/(audio_sound_length(mCredits)*room_speed/timesspd);

maxlength = audio_sound_length(mCredits)*room_speed/timesspd;
alarm[0] = maxlength;
spd = 1;