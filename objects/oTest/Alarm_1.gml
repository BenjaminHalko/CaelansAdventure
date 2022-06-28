/// @desc
if(mode == 1)
{
	if(question+1 < array_length_2d(global.testdescription,test))
	{
		question++;
		description = global.testdescription[test,question];
		secondline = global.testsecondline[test,question];
		textdescription = "";
		textsecondline = "";
		answer = global.testanswer[test,question];
		answer = string_replace_all(answer,"CAELAN",string_upper(global.name[global.character]));
		answer = string_replace_all(answer,"BIRTHDAY",string(floor(date_year_span(global.birthday[global.character],date_current_datetime()))));
		char = 0;
	}
	else
	{
		question++;
		destroy = true;
		SetAlarm(2,room_speed*4);
		audio_play_sound(snTestSiren,1,false);
		audio_sound_gain(snTestSiren,Load("Settings","Sound Effects Volume",0.5),0);
		audio_sound_gain(snTestSiren,0,9000);
	}
	
	with(questionobject)
	{
		destroy = true;
	}
}

mode = 0;