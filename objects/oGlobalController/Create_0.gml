/// @desc
music[rInt] = noone;
music[rMenu] = mTitle;
music[rLevelSelect] = mTitle;
music[rCharacterSelect] = mTitle;
music[rExtras] = mExtras;
music[rHouse] = mHome;
music[rTitle] = mHome;
music[rGrasslands] = mGrasslandsDay;
music[rGrasslandsNight] = mGrasslandsNight;
music[rUnderground] = mUndergroundDay;
music[rUndergroundNight] = mUndergroundNight;
music[rUndergroundBoss] = mBoss;
music[rDesert] = mDesertDay;
music[rDesertNight] = mDesertNight;
music[rSnow] = mSnowDay;
music[rSnowNight] = mSnowNight;
music[rForest] = mForestDay;
music[rForestNight] = mForestNight;
music[rHauntedHouse] = mHauntedHouseDay;
music[rHauntedHouseNight] = mHauntedHouseNight;
music[rAirshipOutside] = mAirshipDay;
music[rAirshipInside] = mAirshipDay;
music[rAirshipNightOutside] = mAirshipNight;
music[rAirshipNightInside] = mAirshipNight;
music[rAirshipBoss] = mBoss;
music[rCastle] = mCastleDay;
music[rCastleA] = mCastleDay;
music[rCastleB] = mCastleDay;
music[rCastleNight] = mCastleNight;
music[rFinalBossCastle] = mFinalBoss;
music[rFinalBossAirship] = mFinalBoss;
music[rFinalBossHauntedHouse] = mFinalBoss;
music[rFinalBossForest] = mFinalBoss;
music[rFinalBossSnow] = mFinalBoss;
music[rFinalBossDesert] = mFinalBoss;
music[rFinalBossUnderground] = mFinalBoss;
music[rFinalBossGrasslands] = mFinalBoss;
music[rFinalBossEvilChrisFightIntro] = noone;
music[rFinalBossEvilChrisFight] = mEvilChrisBossIntro;
music[rFinalBossEvilChrisDefeat] = noone;
music[rFinalBossEvilRoomIntro] = noone;
music[rFinalBossEvilRoomFight] = mEvilRoom;
music[rFinalBossEvilRoomDefeated] = noone;
music[rFinalBossHouse] = mHome;
music[rSecret] = mGrasslandsDay;
music[rCreditsOptions] = mCredits;

musicplaying = noone;
vol = 0;
song = noone;
songplaying = noone;
loop = true;
pause = false;
length = 165*room_speed/8;

previousroom = noone;

global.character = global.annaramode;

levelselected = noone;

global.name[PLAYER.C] = "Caelan";
global.name[PLAYER.A] = "Annara";
global.name[PLAYER.B] = "Benjamin";
global.name[PLAYER.E] = "Emma";

global.birthday[PLAYER.C] = date_create_datetime(2011,3,6,0,0,0);
global.birthday[PLAYER.A] = date_create_datetime(2014,1,18,0,0,0);
global.birthday[PLAYER.B] = date_create_datetime(2005,4,11,0,0,0);
global.birthday[PLAYER.E] = date_create_datetime(2008,9,14,0,0,0);

global.onoff = false;

unpersistant = false;
airshipphasesave = false;

global.rumble = Load("Settings","Rumble",true);
global.autojump = Load("Settings","Autojump",true);
rumble = false;
global.gamepad = false;

global.gp = 0;
global.gamepadconnected = false;
windowsize = Load("Settings","WindowSize",960);

if(!window_get_fullscreen())
{
	window_set_size(windowsize,windowsize/(1920/1080));
}

windowx = median(0,Load("Settings","WindowX",display_get_width()/2-window_get_width()/2),display_get_width()-window_get_width());
windowy = median(0,Load("Settings","WindowY",display_get_height()/2-window_get_height()/2),display_get_height()-window_get_height());

if(!window_get_fullscreen())
{
	window_set_position(windowx,windowy);
}