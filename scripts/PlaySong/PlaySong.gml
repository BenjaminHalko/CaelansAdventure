/// @desc PlaySong
///@arg Song
///@arg Loop
function PlaySong(argument0, argument1) {

	if(string(argument0) != "default")
	oGlobalController.song = argument0;
	else
	oGlobalController.song = oGlobalController.music[room];
	oGlobalController.loop = argument1;


}
