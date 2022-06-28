/// @desc
AnswerTest(oTextbox.text);

if(string_pos(oTest.answer,oTextbox.text) == 0) or ((string_digits(oTest.answer) != "") and (string_digits(oTextbox.text) != oTest.answer))
{
	oTextbox.text = "";
	keyboard_string = "";
}