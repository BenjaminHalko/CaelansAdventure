/// @desc Ending Timer
if(sprite_index == spriteending[global.character])
{
	image_speed = -2;
}
else
{
	targetx = oDoor;
	oGlobalController.pause = false;
	PlaySong(mCredits,false);
}