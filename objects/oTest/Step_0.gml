/// @desc
if(!destroy)
{
	if(backalpha >= 1) and (!destroy)
	{
		SetAlarm(5, textspd);
	}
	
	if(alarm[0] <= 0) and (backalpha >= 1)
	{
		if(char <= max(string_length(description),string_length(secondline)))
		{
			alarm[0] = textspd;
		
			if(!instance_exists(global.testquestionobject[test,question])) and (char == max(string_length(description),string_length(secondline)))
			{
				questionobject = instance_create_depth(0,0,depth-1,global.testquestionobject[test,question]);
			}
		}
		else if(audio_is_playing(talkingsound))
		{
			audio_stop_sound(talkingsound);
		}
	}
	alpha = Approch(alpha,maxalpha,0.003);
	
	backalpha = Approch(backalpha,1,0.01);
}
else
{
	backcol = Approch(backcol,Wave(0,0.3,1,0),0.01);
	
	if(alarm[2] <= 0)
	{
		SetAlarm(3,irandom_range(1,room_speed/2));
		screenindex++;
		
		if(alarm[4]<=10)
		{
			backvisible = true;
		}
	}
}

if(mode == 1) or (destroy)
{
	SetAlarm(6,textspd/3);
}

if(backalpha >= 0.8)
{
	healthbar += ((array_length_2d(global.testdescription,test)-question)/(array_length_2d(global.testdescription,test)-1) - healthbar) / 15;
}

if(backalpha >= 0.1) and (!destroy)
{
	energyborderalpha = min(1,energyborderalpha+max(((1-energyborderalpha)/energyborderalphaspd),0.005));
}