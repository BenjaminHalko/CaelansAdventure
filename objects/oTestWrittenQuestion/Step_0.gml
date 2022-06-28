/// @desc

if(alarm[0] <= 0)
{
	if(char <= string_length(textquestion))
	{
		alarm[0] = textspd;
	}
	else if(!instance_exists(global.testanswerobject[test,question])) and (char >= string_length(textquestion))
	{	
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
				
				answerobject.amount = amount;
				answerobject.number = i;
			}
		}
		else
		{
			answerobject = instance_create_depth(0,0,depth,global.testanswerobject[test,question]);
		}
	}
}