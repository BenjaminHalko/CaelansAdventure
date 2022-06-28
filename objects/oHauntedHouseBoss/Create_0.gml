/// @desc

event_inherited();

start = false;
activated = false;

hitplayertime = 0;
phase = 0;

margin = 5;
destroy = false;

time = room_speed*2;

explosions = 0;
explosionsmax = 3;

hitplayer = false;

phaseattack[0] = SkeletonAttack1;
phasetime[0] = room_speed*4;

phaseattack[1] = SkeletonAttack2;
phasetime[1] = room_speed*5;

phaseattack[2] = SkeletonAttack3;
phasetime[2] = room_speed*5;

phaseattack[3] = SkeletonAttack4;
phasetime[3] = room_speed*5;

phaseattack[4] = SkeletonAttack5;
phasetime[4] = room_speed*4;

phaseattack[4] = SkeletonAttack5;
phasetime[4] = room_speed*5;

phaseattack[5] = SkeletonAttack6;
phasetime[5] = room_speed*5;

phaseattack[6] = SkeletonAttack7;
phasetime[6] = room_speed*4;

phaseattack[7] = SkeletonAttack8;
phasetime[7] = room_speed*4;

phaseattack[8] = SkeletonAttack9;
phasetime[8] = room_speed;

stopattack = false;

explosions = 0;
explosionsmax = 10;
explosionspd = 5;

#region Talking Code
starting = true;
active = true;
talknumber = 6;
text[0] = "Hello Person";
text[1] = "I am the skeleton!";
text[2] = "I will destroy you!";
#endregion