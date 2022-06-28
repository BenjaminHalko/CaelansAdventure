/// @desc
if(instance_exists(oEvilChrisBoss))
{
	if(oEvilChrisBoss.playerallowhit)
	{
		oEvilChrisBoss.playerallowhit = false;
		oEvilChrisBoss.alarm[3] = room_speed;
		oEvilChrisBoss.playerhealth--;
	}
}