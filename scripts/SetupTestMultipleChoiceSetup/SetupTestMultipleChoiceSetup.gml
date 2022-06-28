/// @descSetupTestMultipleChoiceSetup
/// @arg Test#
/// @arg Question#
/// @arg Description
/// @arg Question
/// @arg Answer
/// @arg QuestionShape
/// @arg QuestionColour

var t = argument0;
var q = argument1;

global.testdescription[t,q] = argument2;
global.testquestion[t,q] = argument3;
global.testanswer[t,q] = argument4;
global.testquestionobject[t,q] = oTestWrittenQuestion;
global.testanswerobject[t,q] = oMultipleChoice;
global.testwrittenimage[t,q] = argument5;
global.testwrittencolour[t,q] = argument6;