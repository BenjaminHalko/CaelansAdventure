/// @descSetupTestMultipleChoice2Setup
/// @arg Test#
/// @arg Question#
/// @arg Colour
/// @arg Shape
/// @arg Text
function SetupTestMultipleChoice2(argument0, argument1, argument2, argument3, argument4) {

	var t = argument0;
	var q = argument1;

	global.testmultiplechoicecolour2[t,q] = argument2;
	global.testmultiplechoiceshape2[t,q] = argument3;
	global.testmultiplechoicetext2[t,q] = argument4;
	global.testmultiplechoicenumber[t,q] = 2;


}
