/// @desc
if(oPlayer.hascontrol) and (allowhit)
{
	allowhit = false;
	hp -= 1;
	if(hp <= 3)
	{
		if(global.user == USER.ANNARA)
		hp = 0;
		else
		PlaySong(mBossHurry,true);		
	}
	oPlayer.hascontrol = false;
	hitbyplayer = true;
	pushspd = 4;
	pushdir = point_direction(x,y,oPlayer.x,oPlayer.y);
	SetAlarm(1,room_speed);
	
	xdir = lengthdir_x(1,round(pushdir/6)*360+45);
	ydir = lengthdir_y(1,round(pushdir/6)*360+45);
	
	if(hp == 3)
	{
		for(var i = 0; i <= 3; i++)
		{
			arm[i*2].extendphase = 3;
		}
	}
}