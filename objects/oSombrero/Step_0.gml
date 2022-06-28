/// @desc
image_angle -= 15;

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
		SetAlarm(2,number*room_speed/2*spd-room_speed);
		break;
	}
	case 2:
	{
		y += 2;
		break;
	}
	case 3:
	{
		if(instance_exists(oDesertBoss))
		{
			hsp += lengthdir_x(0.5,point_direction(x,y,oDesertBoss.x,oDesertBoss.y-oDesertBoss.sprite_height/2));
			vsp += lengthdir_y(0.5,point_direction(x,y,oDesertBoss.x,oDesertBoss.y-oDesertBoss.sprite_height/2));
		
			x += hsp;
			y += vsp;

			if(place_meeting(x,y,oDesertBoss))
			{
				oDesertBoss.hit = true;
				phase = 4;
			}
		}
		else
		{
			phase = 4;
		}
		break;
	}
	case 4:
	{
		vsp += 0.3;
		x += hsp;
		y += vsp;
		break;
	}
}

if(y > room_height+24) and (instance_exists(oDesertBoss))
{
	if(oDesertBoss.hp == 15) and (instance_exists(oVaneesaHint))
	{
		oVaneesaHint.counter++;
		
		if(oVaneesaHint.counter >= 2)
		{
			oVaneesaHint.active = true;
		}
	}
	instance_destroy();
}