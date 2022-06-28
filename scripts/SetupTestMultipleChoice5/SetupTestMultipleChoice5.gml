/// @descSetupTestMultipleChoice5Setup
/// @arg Test#
/// @arg Question#
/// @arg Colour
/// @arg Shape
/// @arg Text
function SetupTestMultipleChoice5(argument0, argument1, argument2, argument3, argument4) {

	var t = argument0;
	var q = argument1;

	global.testmultiplechoicecolour5[t,q] = argument2;
	global.testmultiplechoiceshape5[t,q] = argument3;
	global.testmultiplechoicetext5[t,q] = argument4;
	global.testmultiplechoicenumber[t,q] = 5;


}
