/// @desc
text[3] = "QUIT";
text[2] = "OPTIONS";
text[1] = "EXTRAS"
text[0] = "LEVEL SELECT";
pos = 0;
margin = 96;
percent = 0;
for(var i=0; i<=array_length_1d(text)-1;i++)
{
	fontsize[i] = 0.64;
}

extrasglow = false;
glow = c_white;
for(var i = 1; i <= global.numberofextras; i++)
{
	if(Load("Extras","Collected - "+string(i),false)) and (Load("Extras","Watched - "+string(i),false) == false)
	{
		extrasglow = true;
		break;
	}
}

y -= margin;