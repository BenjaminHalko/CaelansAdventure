/// @desc
start = false;
activated = false;

phase = 0;

margin = 5;
y += 500;
vsp = 0;
movespd = 4;

hp = 7;
allowhit = true;
drawwhite = false;

time = room_speed*2;
rumble = true;

hitbyplayer = false;
hitdir = 0;

explosions = 0;
explosionsmax = 30;

xdir = choose(-1,1);
ydir = choose(-1,1);
spd = 4;
anglespd = 0;
stop = false;
stopped = false;

pushdir = 0;
pushspd = 4;

for(var i = 0; i < 8; i++)
{
	arm[i] = instance_create_depth(x,y,depth+1,oForestBossArm);
}

#region Talking Code
starting = true;
active = true;
ending = false;
#endregion

image_speed = 0;
image_index = 0;
visible = false;
eyeangle = 0;
eyeanglespd = 0;