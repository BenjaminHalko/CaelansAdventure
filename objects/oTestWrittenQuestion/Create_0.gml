/// @desc
test = oTest.test;
question = oTest.question;

var type = kbv_type_default;
if(test == 2) type = kbv_type_numbers;
keyboard_virtual_show(type,kbv_returnkey_done,kbv_autocapitalize_none,false);
textquestion = global.testquestion[test,question];
textspd = 5;
textquestiondraw = "";
index = global.testwrittenimage[test,question];
image_blend = global.testwrittencolour[test,question];
image_alpha = 0;
destroy = false;
talkingsound = noone;
talksound = oTest.talksound;
char = -3;
if(textquestion = "")
{
	char = 0;
}

length[40] = 488;
length[41] = 480;
length[42] = 488;
length[43] = 480;
length[44] = 480;

length[49] = 1000;
length[50] = 952;
length[51] = 952;
length[52] = 1576;
length[53] = 1600;
length[54] = 320;

length[65] = 768;