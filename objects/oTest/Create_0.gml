/// @desc
window_mouse_set(window_get_width()/2,window_get_height()/3*2);
oCamera.mode = 3;
test = global.test;
oCamera.follow = oPlayer;
question = 1;
description = global.testdescription[test,question];
secondline = global.testsecondline[test,question];
answer = global.testanswer[test,question];
description = string_replace_all(description,"Caelan",global.name[global.character]);
answer = string_replace_all(answer,"CAELAN",string_upper(global.name[global.character]));
answer = string_replace_all(answer,"BIRTHDAY",string(floor(date_year_span(global.birthday[global.character],date_current_datetime()))));
answerspd = room_speed;
textspd = 5;
textdescription = "";
textsecondline = "";
mode = 0;
spd = 1;
alpha = 0;
maxalpha = 0.25;
destroy = false;
creator = noone;
backalpha = 0;
backcol = 0;
backvisible = false;
screenindex = 0;
char = -3;
healthbar = 0;
textenergy = "";
energychar = -3;
if(room == rFinalBossAirship) or (room == rFinalBossCastle) or (room == rFinalBossDesert) or (room == rFinalBossForest) or (room == rFinalBossGrasslands) or (room == rFinalBossHauntedHouse) or (room == rFinalBossSnow) or (room == rFinalBossUnderground) or (oGlobalController.song == mBoss) or (oGlobalController.song == mBossHurry)
energystring = "Really Evil Energy Level:";
else
energystring = "Evil Energy Level:";
energyborderalpha = 0;
energyborderalphaspd = room_speed/3;
if(description = "")
{
	char = 0;
}

backgroundcolour[0] = c_white;
backgroundcolour[1] = make_colour_hsv(120,50,255);
backgroundcolour[2] = make_colour_hsv(0,50,255);
talkingsound = noone;

if(room == rHauntedHouse) or (room == rHauntedHouseNight)
{
	talksound = snTestTalk3;
}
else if(audio_is_playing(mFinalBoss)) or (audio_is_playing(mBoss))
{
	talksound = snTestTalk4;
}
else
{
	talksound = snTestTalk1;
}

with(oWater)
{
	surface_free(water_surface);
}

with(oBossWater)
{
	surface_free(water_surface);
}

var w = display_get_gui_width();
var h = display_get_gui_height();
var scaleborder = (((w/2)+(400*(display_get_gui_height()/960)))-((w/2)-(400*(display_get_gui_height()/960))))/sprite_get_width(sTestEnergyBorder);

energyboardcoloums = sprite_get_width(sTestEnergyBorder)*scaleborder/15;
energyboardrows = sprite_get_height(sTestEnergyBorder)*scaleborder/15;
energyboardspd = random_range(7,13);
energyboardshake = 5;

for(var i = 0; i < energyboardcoloums; i++)
{
	for(var j = 0; j < energyboardrows; j++)
	{
		energyboardgrv[i,j] =random_range(0.25,0.4);
		energyboardxstart[i,j] = w/2-sprite_get_width(sTestEnergyBorder)*scaleborder/2+sprite_get_width(sTestEnergyBorder)*scaleborder/energyboardcoloums*i;
		energyboardystart[i,j] = -h/50+sprite_get_height(sTestEnergyBorder)*scaleborder/energyboardrows*j;
		energyboardx[i,j] = 0;
		energyboardy[i,j] = 0;
		energyboarhsp[i,j] = lengthdir_x(energyboardspd,random_range(-10,10)+point_direction(sprite_get_width(sTestEnergyBorder)/2,sprite_get_height(sTestEnergyBorder),(i+0.5)*sprite_get_width(sTestEnergyBorder)/energyboardcoloums,(j+0.5)*sprite_get_height(sTestEnergyBorder)/energyboardrows));
		energyboardvsp[i,j] = lengthdir_y(energyboardspd,random_range(-10,10)+point_direction(sprite_get_width(sTestEnergyBorder)/2,sprite_get_height(sTestEnergyBorder),(i+0.5)*sprite_get_width(sTestEnergyBorder)/energyboardcoloums,(j+0.5)*sprite_get_height(sTestEnergyBorder)/energyboardrows));
	}
}

objectalphafade = 0.1;
doneExploding = false;