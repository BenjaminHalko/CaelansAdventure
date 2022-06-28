/// @desc
event_inherited();

start = false;
activated = false;

phase = 0;
hp = 5;
if(global.annaramode)
{
	phase = 2;
	hp = 3;
}

margin = 5;
yy = y;
vsp = 0;
movespd = 4;

hit = false;
allowhit = true;
drawwhite = false;

hitplayer = false;
time = room_speed*2;
rumble = true;

hitbyplayer = false;
hitdir = 0;
bossspringpos = 0;

explosions = 0;
explosionsmax = 3;

spring_left = instance_create_layer(x,y,"BossSprings",oSpringCornerRed);
spring_left.image_yscale = -1;
spring_center = instance_create_layer(x,y,"BossSprings",oSpringNormalRed);
spring_center.image_yscale = -1;
spring_right = instance_create_layer(x,y,"BossSprings",oSpringCornerRed);
spring_right.image_yscale = -1;

#region Talking Code
talknumber = 4;
starting = true;
active = true;
text[0] = "Happy Holidays!";
text[1] = "Now I will Destroy You";
text[2] = "Merry Crush-mas";
#endregion