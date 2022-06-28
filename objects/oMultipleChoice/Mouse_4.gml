/// @desc
AnswerTest(number);

if(instance_exists(oMultipleChoiceEnd) and (oMultipleChoiceEnd.otheralpha != 0)) and (number == 1)
{
	with(oMultipleChoiceEnd)
	{
		otheralpha = -1;
	}
	
	with(oMultipleChoiceClickable)
	{
		if(image_alpha != 1)
		{
			x = oMultipleChoiceEnd.x;
			y = oMultipleChoiceEnd.y;
			image_alpha = 1;
		}
	}
}