/// @desc
if(!instance_exists(oTest))
{
	instance_destroy();
}
else if(question != oTest.question)
{	
	image_alpha = Approch(image_alpha,0,oTest.objectalphafade);
	if(image_alpha == 0) instance_destroy();
}
else
{
	if(string_upper(keyboard_string) != text)
	{
		blink = false;
		text = string_upper(keyboard_string);
		if(string_length(text) > maxtext)
		{
			text = string_copy(text,0,maxtext);
			keyboard_string = text;
		}
		else
		{
			audio_stop_sound(sound);
			var found = noone;
		
			if(oTest.test != 2) or (oTest.question != 2)
			{
				if(string_pos(oTest.answer,text) == 0) or (string_pos(oTest.answer,text) == string_length(text) - string_length(oTest.answer)+1)
				{
					for(var i = 1; i <= string_length(text); i++)
					{
						if(string_char_at(text,i) != string_char_at(oTest.answer,i - found+1)) or (found == noone)
						{
							if(string_char_at(text,i) == string_char_at(oTest.answer,1))
							{
								found = i;
							}
							else
							{
								found = noone;
							}
						}
					}
				}
				else
				{
					found = noone;
				}
			}
			else
			{
				if(string_pos(string_digits(text),oTest.answer) == 0)
				{
					found = noone;
				}
				else
				{
					for(var i = 1; i <= string_length(text); i++)
					{
						if(string_char_at(text,i) != string_char_at(oTest.answer,i - found+1))
						{
							if(string_char_at(text,i) == string_char_at(oTest.answer,1))
							{
								found = i;
							}
							else
							{
								found = noone;
							}
						}
					}
				}
			}
		
			if(found != noone)
			{
				sound = audio_play_sound(snPianoSoundCorrect,1,true);
				audio_sound_pitch(sound,pitch[string_length(text) - found]*2/440);
				alarm[2] = room_speed/2;
			}
		}
	}

	image_alpha = Approch(image_alpha,1,oTest.objectalphafade);
	}