/// @desc Variables

#region Basic Variables
image_xscale = -1;

start = false;

phase = 0;

hp = 15;
hit = false;
allowhit = true;
drawwhite = false;

rumble = true;

hitbyplayer = false;

oPlayer.hascontrol = false;
fireindex = 0;
firealpha = 0;
deadalpha = 0;
ghostalpha = 0;
#endregion

#region Talking Code
textobject = noone;
talknumber = 10;
talksound = noone;
pos = 0;
text[0] = "Hello Caelan";
text[1] = "You Have Beaten Me\nfor The Last Time";
text[2] = "Behold!\nMy true power";
text[3] = "Bwa Ha Ha";
#endregion

#region Background Code
background_id = layer_background_get_id(layer_get_id("Background"));
tree_id = layer_get_id("Trees");
tree_speed = 0;
mountain_id = layer_get_id("Mountains");
mountain_speed = 0;
background_val = 255;
var blend = layer_background_get_blend(background_id);
background_hue = colour_get_hue(blend);
background_sat = colour_get_saturation(blend);
alarm[1] = (room_speed*16)+20;
#endregion

#region Sprites
image_speed = 0;
#endregion

#region Icon
iconx = oPlayer.x;
icony = oPlayer.y;
iconspd = 60;
iconscale = 0;
iconabsorbspd = 0.1;
iconangle = 0;
#endregion

#region Player Health
playerhealth = 10;
if(global.user == USER.ANNARA) playerhealth = 20;
playermaxhealth = playerhealth;
playerallowhit = true;
playerdrawwhite = false;
playerheart = 0;
#endregion

#region Attacks
stopattack = false;
attack = 1;
attackphase = 0;
attackscript[0] = EvilChrisSideScreenAttack;
attackscript[1] = EvilChrisWaveAttack;
attackscript[2] = EvilChrisFallingFireAttack;
attackscript[3] = EvilChrisLaserAttack;
#endregion

#region Warning
warningindex = true;
warningspd = sprite_get_speed(sWarning);
#endregion

#region Defeated
defeatphase = 0;
defeatvsp = 0;
defeatgrv = 0.3;
iconyvsp = 0;
#endregion