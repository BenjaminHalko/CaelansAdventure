/// @desc
if(!destroy)
{
	image_angle += 30;

	if(hitbysaw)
	{
		SetAlarm(1,room_speed/3);
		if(rumble)
		{
			Rumble();
		}
		with(oPlayer)
		{
			if(!place_meeting(x+other.movespd,y+1,pCollide))
			{
				x += other.movespd;
			}
		}
	}

	switch(phase)
	{
		case 0:
		{
			y -= 5;
			if(y <= -24)
			{
				phase = 1;
				y = -24;
				x = irandom_range(8500,8900);
			}
			break;
		}
		case 1:
		{
			SetAlarm(2,number*room_speed*spd-room_speed);
			break;
		}
		case 2:
		{
			y += fallspd;
			break;
		}
	}
}