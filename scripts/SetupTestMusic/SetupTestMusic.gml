/// @descSetupTestMusicSetup
/// @arg Test#
/// @arg Question#
/// @arg Description
/// @arg SecondLine
/// @arg Question
/// @arg Song
function SetupTestMusic(argument0, argument1, argument2, argument3, argument4, argument5) {

	var t = argument0;
	var q = argument1;

	global.testdescription[t,q] = argument2;
	global.testsecondline[t,q] = argument3;
	global.testquestion[t,q] = argument4;
	global.testquestionobject[t,q] = oTestWrittenQuestion;
	global.testanswerobject[t,q] = oPiano;
	global.testwrittenimage[t,q] = noone;
	global.testwrittencolour[t,q] = c_white;
	global.testanswer[t,q] = true;
	global.song[t,q] = argument5;


}
