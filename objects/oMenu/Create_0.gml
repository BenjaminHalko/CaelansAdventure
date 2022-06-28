/// @desc
text[3] = "QUIT";
text[2] = "CREDITS";
text[1] = "OPTIONS";
text[0] = "PLAY";

if(Load("Time","Last Played",date_create_datetime(current_year,current_month,current_day,0,0,0)) != date_create_datetime(current_year,current_month,current_day,0,0,0)) Save("Time","Locked",false);

if(Load("Time","Locked",false) == true)
pos = 1;
else
pos = 0;
margin = 72;
percent = 0;
y -= margin/2 ;
for(var i=0; i<=array_length_1d(text)-1;i++)
{
	fontsize[i] = 0.64;
}
alarm[0] = 2;