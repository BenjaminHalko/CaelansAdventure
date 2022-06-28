/// @descSetupTestMultipleChoiceSetup
/// @arg Test#
/// @arg Question#
/// @arg Description
/// @arg SecondLine
/// @arg Question
/// @arg Answer
/// @arg QuestionShape
/// @arg QuestionColour
function SetupTestMultipleChoiceSetup(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {

	var t = argument0;
	var q = argument1;

	global.testdescription[t,q] = argument2;
	global.testsecondline[t,q] = argument3;
	global.testquestion[t,q] = argument4;
	global.testanswer[t,q] = argument5;
	global.testquestionobject[t,q] = oTestWrittenQuestion;
	global.testanswerobject[t,q] = oMultipleChoice;
	global.testwrittenimage[t,q] = argument6;
	global.testwrittencolour[t,q] = argument7;
	global.testsound[t,q] = noone;


}
