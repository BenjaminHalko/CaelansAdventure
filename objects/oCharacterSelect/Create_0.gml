/// @desc
pos = 0;
margin = 100;
textmargin = 30;
percent = 0;

character[0] = global.name[PLAYER.C];
character[1] = global.name[PLAYER.A];

for(var i=0; i<=array_length_1d(character);i++)
{
	currentrectanglewidth[i] = 0;
	currentrectangleheight[i] = 0;
	currentrectanglealpha[i] = 0;
}

sprite[0] = sPlayerRunC;
sprite[1] = sPlayerRunA;

index = 0;

rectangleheight = 120;
rectanglewidth = 200;
spd = 10;

phase = 0;

iconalpha = 0;
iconrotation = 0;
iconscale = 0;