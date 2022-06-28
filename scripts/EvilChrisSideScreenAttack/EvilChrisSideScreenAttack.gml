attackphase = irandom(1);
switch(attackphase)
{
	case 0:
	{
		repeat(20)
		{
			instance_create_layer(irandom_range(room_width/2,864),-100,"Weapons",oSideScreenAttack);
		}
		break;
	}
	case 1:
	{
		repeat(20)
		{
			instance_create_layer(irandom_range(room_width/2,96),-100,"Weapons",oSideScreenAttack);
		}
		break;
	}
}

stopattack = true;
alarm[4] = room_speed*4;