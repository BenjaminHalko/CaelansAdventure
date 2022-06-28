/// @desc
pos = real(global.user);
margin = 100;
textmargin = 30;
percent = 0;

character[0] = global.name[PLAYER.C];
character[1] = global.name[PLAYER.A];
character[2] = "CHRIS";


for(var i=0; i<=array_length_1d(character);i++)
{
	currentrectanglewidth[i] = 0;
	currentrectangleheight[i] = 0;
	currentrectanglealpha[i] = 0;
}

sprite[0] = sPlayerRunC;
sprite[1] = sPlayerRunA;
sprite[2] = sPlayerRunCh;
index = 0;

rectangleheight = 120;
rectanglewidth = 200;
spd = 10;

iconalpha = 0.5;
iconrotation = 0;
iconscale = 0;