/// @desc SetupNote
/// @arg pitch
/// @arg length
function SetupNote(argument0, argument1) {

	var _p = argument0;
	var _l = argument1;

	notes++;

	notepitch[notes] = _p;
	notelength[notes] = _l;


}
