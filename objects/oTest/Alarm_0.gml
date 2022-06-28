/// @desc

if(secondline == "") or (char <= 0)
{
	var c = char;
}
else
{
	var c = floor(char*min(1,string_length(description)/string_length(secondline)/0.5));
}

textdescription = "";
if(char >= 0)
{
	textdescription = string_copy(description,0,c);
}

for(var i = 0; i <= 2; i++)
{
	if(string_length(textdescription) < string_length(description)) and (string_length(textdescription) <= c+3)
	textdescription = textdescription + chr(choose(irandom_range(ord("A"), ord("Z")),irandom_range(ord("a"), ord("z"))));
}


textsecondline = "";


if(char >= 0)
{
	textsecondline = string_copy(secondline,0,char);
}

for(var i = 0; i <= 2; i++)
{
	if(string_length(textsecondline) < string_length(secondline)) and (string_length(textsecondline) <= char+3)
	textsecondline = textsecondline + chr(choose(irandom_range(ord("A"), ord("Z")),irandom_range(ord("a"), ord("z"))));
}

if(!audio_is_playing(talkingsound))
{
	talkingsound = audio_play_sound(talksound,1,false);
}
char++;