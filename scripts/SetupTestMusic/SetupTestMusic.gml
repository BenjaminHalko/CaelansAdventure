/// @descSetupTestMusicSetup
/// @arg Test#
/// @arg Question#
/// @arg Description
/// @arg Question
/// @arg Song

var t = argument0;
var q = argument1;

global.testdescription[t,q] = argument2;
global.testquestion[t,q] = argument3;
global.testquestionobject[t,q] = oTestWrittenQuestion;
global.testanswerobject[t,q] = oPiano;
global.testwrittenimage[t,q] = noone;
global.testwrittencolour[t,q] = c_white;
global.testanswer[t,q] = true;
global.song[t,q] = argument4;