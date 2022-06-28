/// @description Footsteps
if (sprite_index == spriterun[global.character]) audio_play_sound(choose(snFoot1,snFoot2,snFoot3,snFoot4),1,false);

if (sprite_index == spritejump[global.character]) or (sprite_index == spritefall[global.character])
{
	image_speed = 0;
	image_index = sprite_get_number(sprite_index)-1;
}