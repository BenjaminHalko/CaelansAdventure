/// @desc
switch(phase)
{
	case 1:
	{
		oPlayer.image_alpha = Approch(oPlayer.image_alpha,1,0.05);
		if(oPlayer.image_alpha == 1) SetAlarm(0,room_speed/2);
		break;
	}
}