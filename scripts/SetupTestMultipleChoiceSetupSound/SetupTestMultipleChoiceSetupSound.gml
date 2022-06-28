/// @descSetupTestMultipleChoiceSetupSound
/// @arg Test#
/// @arg Question#
/// @arg Description
/// @arg SecondLine
/// @arg Question
/// @arg Answer
/// @arg QuestionShape
/// @arg QuestionColour
/// @arg Sound

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
global.testsound[t,q] = argument8;