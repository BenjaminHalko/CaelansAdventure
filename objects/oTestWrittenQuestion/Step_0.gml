/// @desc

sprite_index = sTestImages;
image_index = index;

if(destroy)
{
	image_alpha = Approch(image_alpha,0,oTest.objectalphafade);
	if(image_alpha == 0) instance_destroy();
}
else if(alarm[0] <= 0)
{
	if(char <= string_length(textquestion))
	{
		alarm[0] = textspd;
	}
	else if(!instance_exists(global.testanswerobject[test,question])) and (!instance_exists(oMultipleChoiceEnd)) and (char >= string_length(textquestion))
	{	
		audio_stop_sound(talkingsound);
		if(global.testanswerobject[test,question] == oMultipleChoice)
		{
			var amount = global.testmultiplechoicenumber[test,question];
			for(var i = 1; i <= amount; i++)
			{
				answerobject = instance_create_depth(0,0,depth,oMultipleChoice);
				
				if(i == 1)
				{
					answerobject.image_blend = global.testmultiplechoicecolour1[test,question];
					answerobject.image_index = global.testmultiplechoiceshape1[test,question];
					answerobject.text = global.testmultiplechoicetext1[test,question];
				}
				else if(i == 2)
				{
					answerobject.image_blend = global.testmultiplechoicecolour2[test,question];
					answerobject.image_index = global.testmultiplechoiceshape2[test,question];
					answerobject.text = global.testmultiplechoicetext2[test,question];
				}
				else if(i == 3)
				{
					answerobject.image_blend = global.testmultiplechoicecolour3[test,question];
					answerobject.image_index = global.testmultiplechoiceshape3[test,question];
					answerobject.text = global.testmultiplechoicetext3[test,question];
				}
				else if(i == 4)
				{
					answerobject.image_blend = global.testmultiplechoicecolour4[test,question];
					answerobject.image_index = global.testmultiplechoiceshape4[test,question];
					answerobject.text = global.testmultiplechoicetext4[test,question];
				}
				else if(i == 5)
				{
					answerobject.image_blend = global.testmultiplechoicecolour5[test,question];
					answerobject.image_index = global.testmultiplechoiceshape5[test,question];
					answerobject.text = global.testmultiplechoicetext5[test,question];
				}
				else if(i == 6)
				{
					answerobject.image_blend = global.testmultiplechoicecolour6[test,question];
					answerobject.image_index = global.testmultiplechoiceshape6[test,question];
					answerobject.text = global.testmultiplechoicetext6[test,question];
				}
				
				answerobject.amount = amount;
				answerobject.number = i;
				
				if(index == noone) and (global.testsound[test,question] == noone)
				answerobject.alarm[0] = (i-1)*room_speed/6+1;
				else
				answerobject.alarm[0] = i*room_speed/6+1;
			}
			
			if(global.testsound[test,question] != noone)
			{
				var sound = instance_create_depth(0,0,depth,oSoundButton);
				sound.sound = global.testsound[test,question];
				sound.question = question;
			}
		}
		else if(global.testanswerobject[test,question] == oPiano)
		{
			answerobject = instance_create_depth(0,0,depth,global.testanswerobject[test,question]);
			CreatePianoKeys();
		}
		else
		{
			answerobject = instance_create_depth(0,0,depth,global.testanswerobject[test,question]);
		}
	}
	else
	{
		image_alpha = Approch(image_alpha,1,oTest.objectalphafade);
	}
}

if(oTest.mode == 1)
{
	SetAlarm(1,textspd/3);
}