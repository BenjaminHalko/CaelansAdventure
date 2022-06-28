/// @descSetupTestWritten
/// @arg Test#
/// @arg Question#
/// @arg Description
/// @arg SecondLine
/// @arg Question
function SetupWheresWaldo(argument0, argument1, argument2, argument3, argument4) {

	var t = argument0;
	var q = argument1;

	global.testdescription[t,q] = argument2;
	global.testsecondline[t,q] = argument3;
	global.testquestion[t,q] = argument4;
	global.testquestionobject[t,q] = oTestWrittenQuestion;
	global.testanswerobject[t,q] = oWheresWaldo;
	global.testanswer[t,q] = true;
	global.testwrittenimage[t,q] = noone;
	global.testwrittencolour[t,q] = noone;


}
