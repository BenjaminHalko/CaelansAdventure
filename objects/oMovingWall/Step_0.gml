/// @desc
if(active) and (movespd != 0)
{
	if(global.annaramode)
	x += movespd/1.5;
	else
	x += movespd;
	with(oMovingWallSides)
	{
		if(global.annaramode)
		x += other.movespd/1.5;
		else
		x += other.movespd;
	}
	if(oPlayer.hascontrol)
	{
		with(oPlayer)
		{
			if(place_meeting(x,y,other))
			{
				x = other.bbox_right+(x-bbox_left)+1;
			}
				
			if(place_meeting(x,y,pCollide))
			{
				SlideTransistion(TRANS_MODE.GOTO,room);
				hascontrol = false;
				other.ateplayer = true;
			}
		}
	}
	ScreenShake(movespd/2,1);
	SetAlarm(1,max(1,(room_speed/6)*(6-movespd)))
}

if(alarm[0] > 0) or (movespd == 20)
{
	Rumble();
}
layer_x("MovingWallTiles",x-xstart);