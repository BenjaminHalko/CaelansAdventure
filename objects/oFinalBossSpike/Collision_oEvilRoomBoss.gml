/// @desc
with(oEvilRoomBoss)
{
	alarm[5] = flashtimer;
	flashing = true;
	hp--;
}

if(finalattack)
{
	SetAlarm(3,5);
}