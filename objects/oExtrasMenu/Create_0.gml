/// @desc
text[0] = "Back";
text[1] = "Caelan";
text[2] = "Annara";
text[3] = "Benjamin";
text[4] = "Emma";
text[5] = "Evil Chris";
text[6] = "Map of\nHome";
text[7] = "Home";
text[8] = "Map of\nGrasslands";
text[9] = "Grasslands";
text[10] = "Map of\nGrasslands\nNight";
text[11] = "Grasslands\nNight";
text[12] = "Map of\nUnderground";
text[13] = "Underground";
text[14] = "Map of\nUnderground\nNight";
text[15] = "Underground\nNight";
text[16] = "Map of\nDesert";
text[17] = "Desert";
text[18] = "Map of\nDesert Night";
text[19] = "Desert\nNight";
text[20] = "Map of\nSnowy Mountain";
text[21] = "Snowy Mountain";
text[22] = "Map of\nSnowy Mountain\nNight";
text[23] = "Snowy Mountain\nNight";
text[24] = "Map of\nForest";
text[25] = "Forest";
text[26] = "Map of\nForest Night";
text[27] = "Forest\nNight";
text[28] = "Map of\nHaunted House";
text[29] = "Haunted House";
text[30] = "Map of\nHaunted House\nNight";
text[31] = "Haunted House\nNight";
text[32] = "Map of\nAirship";
text[33] = "Airship";
text[34] = "Map of\nAirship Night";
text[35] = "Airship\nNight";
text[36] = "Map of\nCastle - 1";
text[37] = "Map of\nCastle - 2";
text[38] = "Map of\nCastle - 3";
text[39] = "Castle";
text[40] = "Map of\nCastle Night";
text[41] = "Castle\nNight";
text[42] = "Map of\nFinal Boss\n- Castle";
text[43] = "Map of\nFinal Boss\n- Airship";
text[44] = "Map of\nFinal Boss\n- Haunted House";
text[45] = "Map of\nFinal Boss\n- Forest";
text[46] = "Map of\nFinal Boss\n- Snowy Mountain";
text[47] = "Map of\nFinal Boss\n- Desert";
text[48] = "Map of\nFinal Boss\n- Underground";
text[49] = "Map of\nFinal Boss\n- Grasslands";
text[50] = "Common Objects";

ini_open(Savefile);
for(var i = 0; i < array_length_1d(text); i++)
{
	collected[i] = ini_read_real("Extras","Collected - "+string(i),false);
	watched[i] = ini_read_real("Extras","Watched - "+string(i),false);
	fontsize[i] = 0.4;
	colour[i] = c_white;
}
ini_close();

pos = 0;
for(var i = 1; i <= array_length_1d(text)-1; i++)
{
	if(collected[i])
	{
		pos = i;
		break;
	}
}

for(var i = array_length_1d(text)-1; i > 0; i--)
{
	if(!watched[i]) and (collected[i])
	{
		pos = i;
	}
}
margin = 96;
percent = 0;
spd = 7;
selected = false
infrontalpha = 0;
alphaspd = 0.2;
fullscreenmargin = 10;

y -= margin;

if(global.user == USER.ANNARA)
{
	text[1] = "Annara";
	text[2] = "Caelan";
}