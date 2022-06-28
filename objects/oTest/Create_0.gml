/// @desc
//global.retrofilter = false;
test = global.test;
question = 1;
char = 0;
description = global.testdescription[test,question];
answer = global.testanswer[test,question];
answer = string_replace_all(answer,"CAELAN",string_upper(global.name[global.character]));
answer = string_replace_all(answer,"BIRTHDAY",string(floor(date_year_span(global.birthday[global.character],date_current_datetime()))));
answerspd = room_speed;
textspd = 10;
textdescription = "";
mode = 0;
spd = 1;
alpha = 0;
maxalpha = 0.25;
destroy = false;
creator = noone;

backgroundcolour[0] = c_white;
backgroundcolour[1] = make_colour_hsv(120,50,255);
backgroundcolour[2] = make_colour_hsv(0,50,255);