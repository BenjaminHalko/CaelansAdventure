/// @desc
playedsecretlevel = Load("Extras","PlayedSecretLevel",false);
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
text[19] = "Evil Chris Fight";
text[18] = "Final Boss";
text[17] = "Castle\nNight";
text[16] = "Castle\nDay";
text[15] = "Airship\nNight";
text[14] = "Airship\nDay";
text[13] = "Haunted House\nNight";
text[12] = "Haunted House\nDay";
text[11] = "Forest\nNight";
text[10] = "Forest\nDay";
text[9] = "Snowy Mountain\nNight";
text[8] = "Snowy Mountain\nDay";
text[7] = "Desert\nNight";
text[6] = "Desert\nDay";
text[5] = "Underground\nNight";
text[4] = "Underground\nDay";
text[3] = "Grasslands\nNight";
text[2] = "Grasslands\nDay";
text[1] = "Home";
text[0] = "Back";
pos = 1;
margin = 96;
percent = 0;
spd = 7;
for(var i=0; i<=array_length_1d(text)-1;i++)
{
	fontsize[i] = 0.5;
}

y -= margin;