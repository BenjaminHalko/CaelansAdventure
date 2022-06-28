/// @desc
if(alarm[0] <= 0) and (image_alpha == 1)
{
	if(phase == 0)
	{
		phase = 1;
		originaltext = text;
		originalblend = image_blend;
		text = oMultipleChoice.text;
		image_blend = oMultipleChoice.image_blend;
		AnswerTest(oMultipleChoice.number);
		alarm[0] = room_speed;
	}
	else if(phase == 3)
	{
		phase = 4;
		alarm[0] = room_speed;
	}
	else if(phase == 4)
	{
		AnswerTest(number);
		phase = 5;
	}
	
}