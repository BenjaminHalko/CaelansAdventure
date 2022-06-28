/// @desc
if(global.unlockedallextras)
{
	if(playedsecretlevel)
	{
		text[20] = "Secret Level";
	}
	else
	{
		text[20] = "?????";
	}
}

for(var i=0; i<=array_length_1d(text)-1;i++)
{
	fontsize[i] = 0.5;
}