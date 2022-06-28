/// @desc
music[rInt] = noone;
music[rMenu] = mTitle;
music[rOptions] = mTitle;
music[rLevelSelect] = mTitle;
music[rCharacterSelect] = mTitle;
music[rHouse] = mHome;
music[rGrasslands] = mGrasslandsDay;
music[rUnderground] = mUndergroundDay;
music[rDesert] = mDesertDay;
music[rSnow] = mSnowDay;
music[rCredits] = mCredits;

musicplaying = noone;
vol = 0;
song = noone;
songplaying = noone;
loop = true;
pause = false;

previousroom = noone;

global.character = PLAYER.C;

levelselected = noone;

global.name[PLAYER.C] = "Caelan";
global.name[PLAYER.A] = "Annara";

global.birthday[PLAYER.C] = date_create_datetime(2011,3,6,0,0,0);
global.birthday[PLAYER.A] = date_create_datetime(2014,1,18,0,0,0);

global.onoff = false;

unpersistant = false;

global.rumble = Load("Settings","Rumble",true);
global.autojump = Load("Settings","Autojump",true);
rumble = false;
global.gamepad = false;

global.gp = 0;
global.gamepadconnected = false;