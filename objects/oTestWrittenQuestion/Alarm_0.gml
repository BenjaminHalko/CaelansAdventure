/// @desc
textquestiondraw = "";

if(char >= 0)
{
	textquestiondraw = string_copy(textquestion,0,char);
}

for(var i = 0; i <= 2; i++)
{
	if(string_length(textquestiondraw) < string_length(textquestion)) and (string_length(textquestiondraw) <= char+3)
	textquestiondraw = textquestiondraw + chr(choose(irandom_range(ord("A"), ord("Z")),irandom_range(ord("a"), ord("z"))));
}

if(!audio_is_playing(talkingsound))
{
	talkingsound = audio_play_sound(talksound,1,false);
}
char++;