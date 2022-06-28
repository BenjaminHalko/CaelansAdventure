image_speed = random_range(0.5,1);
image_xscale = choose(1,-1);
image_yscale = choose(1,-1);
alarm[0] = 15*image_speed;
var sound = audio_play_sound(choose(snExplosion1,snExplosion2),1,false);
audio_sound_pitch(sound,random_range(0.8,1.2))