/// @desc Activate Spikes
if(phase == 15) mode = irandom(1);
with(oFinalBossSpike)
{
	switch(other.phase)
	{
		case 7:
		{
			if(ystart == 416) or (ystart == 384)
			{
				attack = true;
			}
			other.alarm[0] = room_speed*2;
			break;
		}
		case 8:
		{
			if(ystart != 416) and (ystart != 384)
			{
				if(!attack)
				create = room_speed/8;
				attack = true;
			}
			other.alarm[0] = room_speed;
			break;
		}
		case 9:
		{
			if(ystart == 416) or (ystart == 384)
			{
				attack = true;
			}
			other.alarm[0] = room_speed*1.5;
			break;
		}
		case 10:
		{
			if(ystart != 416) and (ystart != 384)
			{
				if(!attack)
				create = room_speed/8;
				attack = true;
			}
			other.alarm[0] = room_speed*1.5;
			break;
		}
		case 11:
		{
			if(ystart == 416) or (ystart == 384)
			{
				attack = true;
			}
			other.alarm[0] = room_speed*2;
			break;
		}
		case 12:
		{
			if(ystart != 416) and (ystart != 384)
			{
				if(!attack)
				create = room_speed/8;
				attack = true;
			}
			other.alarm[0] = room_speed*1.5;
			break;
		}
		case 13:
		{
			if(ystart == 416) or (ystart == 384)
			{
				attack = true;
			}
			other.alarm[0] = room_speed*2;
			break;
		}
		case 14:
		{
			if(irandom(4) == 0)
			{
				attack = true;
			}
			break;
		}
		case 15:
		{
			if((other.mode == 0) and ((ystart == 416) or (ystart == 384))) or ((other.mode == 1) and ((ystart == 352) or (ystart == 320)))
			{
				attack = true;
			}
			break;
		}
		case 16:
		{
			if(irandom(4) == 0)
			{
				attack = true;
			}
			break;
		}
		case 18:
		{
			if(!finalattack)
			create = 5;
			finalattack = true;
			break;
		}
	}
}