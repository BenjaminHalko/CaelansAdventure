/// @desc

event_inherited();

#region Airship Code
cratedelay[0] = 240;
cratedelay[1] = 100;
cratedelay[2] = 60;
cratedelay[3] = 120;
cratedelay[4] = 100;
cratedelay[5] = 30;
cratedelay[6] = 15;
cratedelay[7] = 0;
destroy = false;
margin = 16;
phase = 0;
if(oGlobalController.airshipphasesave) phase = 3;
floatmargin = 10;
phasedelay[0] = room_speed*random_range(15,30);
phasedelay[1] = room_speed*random_range(15,25);
phasedelay[2] = room_speed*random_range(15,20);
phasedelay[3] = room_speed*random_range(15,20);
phasedelay[4] = room_speed*random_range(15,20);
phasedelay[5] = room_speed*random_range(10,20);
phasedelay[6] = room_speed*random_range(10,20);
phasedelay[7] = 0;
pos = 0;
explosions = 0;
explosionsmax = 10;
explosionspd = 30;
start = false;
alarm[4] = room_speed;
previouschoice = noone;
showmessage = !oGlobalController.airshipphasesave;
previouslocation = 1000;
phase6intro = true;
yyy = 2;
previousy = room_height/2;
talknumber = 7;
#endregion

#region Talking Code
if(phase == 0)
{
	starting = false;
	active = false;
	oPlane.hascontrol = false;
}
else
{
	starting = false;
	active = false;
	ending = true;
}
text[0] = "Witness this invincible\nbattleship!";
text[1] = "It's power is unmatched\nthroughout the universe!";
text[2] = "Mwa Ha Ha!";
#endregion