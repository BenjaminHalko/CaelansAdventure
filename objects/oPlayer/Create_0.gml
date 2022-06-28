enum PLAYER
{
	C,
	A,
	B,
	E,
	CH
}
hsp = 0;
if(room != rCastleB)
{
	vsp = 0;
	lockedspringjump = false;
}
else
{
	vsp = -15;
	lockedspringjump = true;
}
jumpspd = -7.3;
grv = 0.3;
quicksandgrv = 0.5;
quicksandjumpspd = -4.5;
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
springspdnormal = -11.1;
if(global.credits) or (room == rSecret) springspdnormal = - 11;
springspdsideways = 7;
purplespringjump = false;
purplespringspd = -15;

snow = (room == rSnow) or (room == rSnowNight) or (room == rFinalBossSnow);

spritestand[PLAYER.C,false] = sPlayerC;
spriterun[PLAYER.C,false] = sPlayerRunC;
spritejump[PLAYER.C,false] = sPlayerJumpC;
spritefall[PLAYER.C,false] = sPlayerFallC;
spriteswimming[PLAYER.C] = sPlayerSwimmingC;
spriteswimmingrun[PLAYER.C] = sPlayerSwimmingRunC;

spritestand[PLAYER.C,true] = sPlayerSnowC;
spriterun[PLAYER.C,true] = sPlayerRunSnowC;
spritejump[PLAYER.C,true] = sPlayerJumpSnowC;
spritefall[PLAYER.C,true] = sPlayerFallSnowC;

spritestand[PLAYER.A,false] = sPlayerA;
spriterun[PLAYER.A,false] = sPlayerRunA;
spritejump[PLAYER.A,false] = sPlayerJumpA;
spritefall[PLAYER.A,false] = sPlayerFallA;
spriteswimming[PLAYER.A] = sPlayerSwimmingA;
spriteswimmingrun[PLAYER.A] = sPlayerSwimmingRunA;

spritestand[PLAYER.A,true] = sPlayerSnowA;
spriterun[PLAYER.A,true] = sPlayerRunSnowA;
spritejump[PLAYER.A,true] = sPlayerJumpSnowA;
spritefall[PLAYER.A,true] = sPlayerFallSnowA;

spritestand[PLAYER.B,false] = sPlayerB;
spriterun[PLAYER.B,false] = sPlayerRunB;
spritejump[PLAYER.B,false] = sPlayerJumpB;
spritefall[PLAYER.B,false] = sPlayerFallB;
spriteswimming[PLAYER.B] = sPlayerSwimmingB;
spriteswimmingrun[PLAYER.B] = sPlayerSwimmingRunB;

spritestand[PLAYER.B,true] = sPlayerSnowB;
spriterun[PLAYER.B,true] = sPlayerRunSnowB;
spritejump[PLAYER.B,true] = sPlayerJumpSnowB;
spritefall[PLAYER.B,true] = sPlayerFallSnowB;

spritestand[PLAYER.E,false] = sPlayerE;
spriterun[PLAYER.E,false] = sPlayerRunE;
spritejump[PLAYER.E,false] = sPlayerJumpE;
spritefall[PLAYER.E,false] = sPlayerFallE;
spriteswimming[PLAYER.E] = sPlayerSwimmingE;
spriteswimmingrun[PLAYER.E] = sPlayerSwimmingRunE;

spritestand[PLAYER.E,true] = sPlayerSnowE;
spriterun[PLAYER.E,true] = sPlayerRunSnowE;
spritejump[PLAYER.E,true] = sPlayerJumpSnowE;
spritefall[PLAYER.E,true] = sPlayerFallSnowE;

spritestand[PLAYER.CH,false] = sPlayerCh;
spriterun[PLAYER.CH,false] = sPlayerRunCh;
spritejump[PLAYER.CH,false] = sPlayerJumpCh;
spritefall[PLAYER.CH,false] = sPlayerFallCh;
spriteswimming[PLAYER.CH] = sPlayerSwimmingC;
spriteswimmingrun[PLAYER.CH] = sPlayerSwimmingRunC;

spritestand[PLAYER.CH,true] = sPlayerSnowCh;
spriterun[PLAYER.CH,true] = sPlayerRunSnowCh;
spritejump[PLAYER.CH,true] = sPlayerJumpSnowCh;
spritefall[PLAYER.CH,true] = sPlayerFallSnowCh;

spriteending[PLAYER.C] = sPlayerEndingC;
spriteending[PLAYER.A] = sPlayerEndingA;
spriteending[PLAYER.B] = sPlayerEndingB;
spriteending[PLAYER.E] = sPlayerEndingE;
spriteending[PLAYER.CH] = sPlayerEndingC;

if(!instance_exists(oCamera)) and (room != rFinalBossEvilRoomFight)
{
	instance_create_layer(0,0,layer,oCamera);
}

key_left = 0;
key_right = 0;
key_jump = 0;

if(forCredits != global.credits) and (instance_number(oPlayer) > 1)
{
	instance_destroy();
}
else if(instance_exists(oCamera))
{
	if(oCamera.follow == oPlayer) and (room != rAirshipBoss)
	{
		oCamera.x = x;
		oCamera.y = y;
	}
}

instance_create_depth(0,0,-10000,oTitleCard);
Inputs();