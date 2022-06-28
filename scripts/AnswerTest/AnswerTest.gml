/// @desc AnswerTest
/// @arg answer

with(oTest)
{
	if(alarm[1] <= 0)
	{
		if(argument0 == answer)
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