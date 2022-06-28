enum PLAYER
{
	C,
	A,
	B,
	E
}
hsp = 0;
vsp = 0;
lockedspringjump = true;
jumpspd = -7;
grv = 0.3;
quicksandgrv = 0.5;
quicksandjumpspd = -4;
normalwalksp = 4;
quicksandwalksp = 0.5;
hascontrol = true;
canjump = 0;
automove = false;
incline = 10;
targetx = noone;
keys = 0;
automovewalksp = normalwalksp;
walksp = normalwalksp;
swimming = false;
allowstandinginwater = false;

cornerspringjump = false;
springspdnormal = -11;
purplespringjump = false;
purplespringspd = -15;

spritestand[PLAYER.C] = sPlayerC;
spriterun[PLAYER.C] = sPlayerRunC;
spritejump[PLAYER.C] = sPlayerJumpC;
spritefall[PLAYER.C] = sPlayerFallC;

spritestand[PLAYER.A] = sPlayerA;
spriterun[PLAYER.A] = sPlayerRunA;
spritejump[PLAYER.A] = sPlayerJumpA;
spritefall[PLAYER.A] = sPlayerFallA;
if(!instance_exists(oCamera))
{
	instance_create_layer(0,0,layer,oCamera);
}

key_left = 0;
key_right = 0;
key_jump = 0;