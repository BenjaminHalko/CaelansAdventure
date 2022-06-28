/// @desc
strechlength = 65;

strechlengthamount[false] = 65;
strechlengthamount[true] = 215;

attacking = false;
hp = 10000;
phase = 0;
playerhealth = 30;
if(global.user == USER.ANNARA) playerhealth = 50;
playermaxhealth = playerhealth;
playerinvinciblity = room_speed;
playerflash = false;
playerfreeze = room_speed;
playerallowhit = true;
flashing = false;
flash = false;
flashtimer = room_speed;

alarm[0] = room_speed*3;
alarm[7] = audio_sound_length(mEvilRoom)*room_speed-room_speed*3;

if(!instance_exists(oBackgroundManager))
{
	var manage = instance_create_layer(x,y,layer,oBackgroundManager);
	manage.lay = "Trees";
	var manage = instance_create_layer(x,y,layer,oBackgroundManager);
	manage.lay = "Mountains";
}
if(!instance_exists(oBossHealthBar)) instance_create_layer(0,0,layer,oBossHealthBar);