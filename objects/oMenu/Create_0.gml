/// @desc
text[2] = "QUIT";
text[1] = "OPTIONS";
text[0] = "PLAY";
if(Load("Time","Last Played",current_day) != current_day) Save("Time","Locked",false);

if(Load("Time","Locked",false) == true)
pos = 1;
else
pos = 0;
margin = 96;
percent = 0;
for(var i=0; i<=array_length_1d(text)-1;i++)
{
	fontsize[i] = 0.64;
}
alarm[0] = 2;