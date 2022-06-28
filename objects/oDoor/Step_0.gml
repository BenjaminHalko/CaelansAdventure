/// @desc
switch(phase)
{
	case 0:
	{
		if(point_in_circle(oPlayer.x,oPlayer.y,x,y,32))
		{
			phase = 1;
		}
		break;
	}
	case 1:
	{
		if(oPlayer.x != x)
		{
			with(oPlayer)
			{
				hascontrol = false;
				targetx = other.id;
			}
		}
		else if (alarm[0] <= 0)
		{
			alarm[0] = 10;
		}
		break;
	}
	case 2:
	{
		image_speed = 1;
		break;
	}
	case 3:
	{
		oPlayer.image_alpha = Approch(oPlayer.image_alpha,0,0.05);
		if(oPlayer.image_alpha == 0) and (image_speed != -1) SetAlarm(2,room_speed/2);
	}
}