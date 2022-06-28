image_speed = random_range(0.5,1);
image_xscale = choose(1,-1);
image_yscale = choose(1,-1);
if(irandom(100) == 0) or (room != rFinalBossEvilRoomFight)
{
	var sound = audio_play_sound(snBigExplosion,1,false);
	audio_sound_pitch(sound,random_range(0.8,1.2))
}