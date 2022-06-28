/// @desc
pos = 0;
margin = 100;
textmargin = 30;
percent = 0;

character[0] = global.name[PLAYER.C];
character[1] = global.name[PLAYER.A];
character[2] = global.name[PLAYER.B];
character[3] = global.name[PLAYER.E];

if(global.annaramode)
{
	character[0] = global.name[PLAYER.A];
	character[1] = global.name[PLAYER.C];
}

for(var i=0; i<=array_length_1d(character);i++)
{
	currentrectanglewidth[i] = 0;
	currentrectangleheight[i] = 0;
	currentrectanglealpha[i] = 0;
}

if(oGlobalController.levelselected == rSnow) or (oGlobalController.levelselected == rSnowNight)
{
	sprite[0] = sPlayerRunSnowC;
	sprite[1] = sPlayerRunSnowA;
	sprite[2] = sPlayerRunSnowB;
	sprite[3] = sPlayerRunSnowE;
	
	if(global.annaramode)
	{
		sprite[0] = sPlayerRunSnowA;
		sprite[1] = sPlayerRunSnowC;
	}
}
else
{
	sprite[0] = sPlayerRunC;
	sprite[1] = sPlayerRunA;
	sprite[2] = sPlayerRunB;
	sprite[3] = sPlayerRunE;
	
	if(global.annaramode)
	{
		sprite[0] = sPlayerRunA;
		sprite[1] = sPlayerRunC;
	}
}

index = 0;

rectangleheight = 120;
rectanglewidth = 200;
spd = 10;

phase = 0;

iconalpha = 0;
iconrotation = 0;
iconscale = 0;