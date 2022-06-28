/// @desc
icony = Wave(y-25-sprite_height,y-30-sprite_height,2,0);

switch(phase)
{
	case 0:
	{
		if(((oPlayer.x > x) and (oPlayer.xstart < x)) or ((oPlayer.x < x) and (oPlayer.xstart > x))) and (point_in_circle(oPlayer.x,oPlayer.y,x,y,256)) and (oPlayer.hascontrol)
		{
			phase = 1;
			image_speed = 1;
			SetAlarm(1,20);
		}
		break;
	}
	case 2:
	{
		iconalpha = Approch(iconalpha,1,alphaspd);
		depth = oPlayer.depth-1;
		if(iconalpha == 1) phase = 3;
		break
	}
	case 3:
	{
		floatingiconalpha = Approch(floatingiconalpha,0,alphaspd);
		if(floatingiconalpha == 0) SetAlarm(0,10);
		break;
	}
	case 4:
	{
		floatingiconlowalpha = Approch(floatingiconlowalpha,1,alphaspd);
		if(floatingiconlowalpha == 1) SetAlarm(0,room_speed);
		break;
	}
	case 5:
	{
		iconX = Approch(iconX,oPlayer.x,iconmovespd);
		iconY = Approch(iconY,oPlayer.y,iconmovespd);
		
		if(iconX == oPlayer.x) and (iconY == oPlayer.y)
		{
			SetAlarm(0,10);
		}
		break;
	}
	case 6:
	{
		moveiconscale = Approch(moveiconscale,0,alphaspd);
		moveiconalpha = Approch(moveiconalpha,0,alphaspd);
		SetAlarm(0,room_speed);
		break;
	}
	case 7:
	{
		phase = 8;
		with(oPlayer)
		{
			targetx = instance_nearest(x,y,oNextLevelTrigger);
		}
		
		if(oPlayer.targetx == noone)
		{
			SlideTransistion(TRANS_MODE.GOTO,rMenu);
			Save("Time","Locked",true);
			Save("Time","Last Played",date_create_datetime(current_year,current_month,current_day,0,0,0));
		}
		break;
	}
}