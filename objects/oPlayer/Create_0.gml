enum PLAYER
{
	C,
	A,
	B,
	E
}
hsp = 0;
vsp = 0;
lockedspringjump = false;
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
springspdsideways = 7;
purplespringjump = false;
purplespringspd = -15;

snow = (room != rHouse);

spritestand[PLAYER.C,false] = sPlayerC;
spriterun[PLAYER.C,false] = sPlayerRunC;
spritejump[PLAYER.C,false] = sPlayerJumpC;
spritefall[PLAYER.C,false] = sPlayerFallC;

spritestand[PLAYER.C,true] = sPlayerSnowC;
spriterun[PLAYER.C,true] = sPlayerRunSnowC;
spritejump[PLAYER.C,true] = sPlayerJumpSnowC;
spritefall[PLAYER.C,true] = sPlayerFallSnowC;

spritestand[PLAYER.A,false] = sPlayerA;
spriterun[PLAYER.A,false] = sPlayerRunA;
spritejump[PLAYER.A,false] = sPlayerJumpA;
spritefall[PLAYER.A,false] = sPlayerFallA;

spritestand[PLAYER.A,true] = sPlayerSnowA;
spriterun[PLAYER.A,true] = sPlayerRunSnowA;
spritejump[PLAYER.A,true] = sPlayerJumpSnowA;
spritefall[PLAYER.A,true] = sPlayerFallSnowA;

if(!instance_exists(oCamera))
{
	instance_create_layer(0,0,layer,oCamera);
}

key_left = 0;
key_right = 0;
key_jump = 0;