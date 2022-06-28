/// @desc
if(mode == 1)
{
	if(question+1 < array_length_2d(global.testdescription,test))
	{
		question++;
		description = global.testdescription[test,question];
		answer = global.testanswer[test,question];
		answer = string_replace_all(answer,"CAELAN",string_upper(global.name[global.character]));
		answer = string_replace_all(answer,"BIRTHDAY",string(floor(date_year_span(global.birthday[global.character],date_current_datetime()))));
		char = 0;
	}
	else
	{
		destroy = true;
	}
	
	with(questionobject)
	{
		instance_destroy();
	}
}

mode = 0;