/// @desc
hsp = 0;
vsp = 0;
incline = 0;
movespd = 5;
activated = false;
grv = 0.4;
turnonspd = 0.05;
image_speed = 0;
bouncespd = 6;
bouncedecay = 0.5;
hbsp = 0;
vbsp = 0;

activator = instance_create_layer(x,y,layer,oPlaneMaskPlayer);
activator.creator = id;
hascontrol = true;

if(room == rAirshipBoss)
{
	oCamera.x = x;
	oCamera.y = y;
}