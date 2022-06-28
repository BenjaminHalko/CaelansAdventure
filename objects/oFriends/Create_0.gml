/// @desc
vsp = 0;
grv = oPlayer.grv;
jumpspd = oPlayer.jumpspd;

spritestand[PLAYER.C] = sPlayerC;
spriterun[PLAYER.C] = sPlayerRunC;
spritejump[PLAYER.C] = sPlayerJumpC;
spritefall[PLAYER.C] = sPlayerFallC;

spritestand[PLAYER.B] = sPlayerB;
spriterun[PLAYER.B] = sPlayerRunB;
spritejump[PLAYER.B] = sPlayerJumpB;
spritefall[PLAYER.B] = sPlayerFallB;

spritestand[PLAYER.E] = sPlayerE;
spriterun[PLAYER.E] = sPlayerRunE;
spritejump[PLAYER.E] = sPlayerJumpE;
spritefall[PLAYER.E] = sPlayerFallE;

spritestand[PLAYER.A] = sPlayerA;
spriterun[PLAYER.A] = sPlayerRunA;
spritejump[PLAYER.A] = sPlayerJumpA;
spritefall[PLAYER.A] = sPlayerFallA;

if(person == global.character)
{
	person = PLAYER.C;
}