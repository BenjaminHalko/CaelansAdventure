/// @desc AnswerTest
/// @arg answer
function AnswerTest(argument0) {

	if(image_alpha != 0)
	{
		with(oTest)
		{
			if(alarm[1] <= 0)
			{
				if(argument0 == answer) or ((string_pos(answer,argument0) != 0) and ((is_string(answer) and string_digits(answer) == "") or (string_digits(argument0) == answer)))
				{
					mode = 1;
					audio_play_sound(snTestCorrect,1,false);
				}
				else
				{
					mode = 2;
					audio_play_sound(snTestWrong,1,false);
				}
		
				alarm[1] = answerspd;
			}
		}
	}


}
