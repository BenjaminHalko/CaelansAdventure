/// @desc
if(global.character == PLAYER.A)
{
	sprite_index = sPlayerA;
}
else if(global.character == PLAYER.B)
{
	sprite_index = sPlayerB;
}
else if(global.character == PLAYER.E)
{
	sprite_index = sPlayerE;
}
alarm[0] = room_speed;
image_alpha = 0;