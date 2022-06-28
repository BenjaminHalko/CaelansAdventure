/// @description Footsteps
if (sprite_index == spriterun[global.character,snow]) and (!global.credits) audio_play_sound(choose(snFoot1,snFoot2,snFoot3,snFoot4),1,false);

if (sprite_index == spritejump[global.character,snow]) or (sprite_index == spritefall[global.character,snow])
{
	image_speed = 0;
	image_index = sprite_get_number(sprite_index)-1;
}

if(sprite_index == spriteending[global.character])
{
	if(image_speed == 1)
	{
		SetAlarm(1,room_speed*5);
		image_speed = 0;
		image_index = image_number-1;
	}
	else if(image_speed == -2)
	{
		image_speed = 1;
		with(oVaneesaEnd.textobject)
		{
			instance_destroy();
		}
		sprite_index = spritestand[global.character,snow];
		SetAlarm(1,room_speed/2);
	}
}