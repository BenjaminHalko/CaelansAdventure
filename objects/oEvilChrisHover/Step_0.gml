/// @desc
switch(phase)
{
	case 0: default:
	{
		y = Wave(ystart-8,ystart+8,2,0);
		if(alarm[0] <= 0)
		{
			Inputs();
			if(oPlayer.x > oPlayer.xstart)
			{
				oPlayer.hascontrol = false;
				oPlayer.hsp = 0;
				oPlayer.automove = false;
				oPlayer.vsp = 0;
				alarm[0] = room_speed;
			}
		}
		break;
	}
	case 1:
	{
		y = Approch(y,ystart,1);
		break;
	}
	case 2:
	{
		x += 10;
		if(x > view_wport[0])
		{
			PlaySong(mGrasslandsDay,true);
			oPlayer.hascontrol = true;
			instance_destroy();
		}
		break;
	}
}