/// @desc
if(firststart)
{
	if(char >= 0)
	{
		textToDraw = string_copy(text,0,char);
	}
	for(var i = 0; i <= 2; i++)
	{
		if(string_length(textToDraw) < string_length(text)) and (string_length(textToDraw) <= char+3)
		textToDraw = textToDraw + chr(choose(irandom_range(ord("A"), ord("Z")),irandom_range(ord("a"), ord("z"))));
	}
	char++;
	
	if(char < string_length(text))
	{
		if(!audio_is_playing(snTestTalk1)) audio_play_sound(snTestTalk1,1,true);
	}
	else
	{
		audio_stop_sound(snTestTalk1);
	}
}
else
{
	for(var i = 1; i <= string_length(textToDraw); i++)
	{
		if(string_copy(textToDraw, i, 1) != " ")
		{
			textToDraw = string_delete(textToDraw, i, 1);
			if(irandom(30) == 0)
			{
				textToDraw = string_insert(" ",textToDraw,i);
			}
			else
			{
				textToDraw = string_insert(chr(choose(irandom_range(ord("A"), ord("Z")),irandom_range(ord("a"), ord("z")))),textToDraw,i);
			}
		}
	}
}