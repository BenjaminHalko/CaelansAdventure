/// @desc Switch Phase
numactivated = 0;
with(oFinalBossWall)
{
	if(active) other.numactivated++;
}
if(numactivated == 0)
{
	attacking = true;
	phase++;
	with(oFinalBossWall)
	{
		if(phase == other.phase)
		SetAlarm(2,room_speed/2);
	}
	alarm[1] = room_speed;
	if(phase >= 7)
	{
		alarm[6] = 1;
	}
}