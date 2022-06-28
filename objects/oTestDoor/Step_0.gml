/// @desc

if(!destroy)
{
	switch(phase)
	{
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
			else if (alarm[2] <= 0)
			{
				alarm[2] = room_speed;
			}
			break;
		}
		case 2:
		{
			if(test != 0)
			{
				global.test = test;
				if(!instance_exists(oTest))
				{
					var testobject = instance_create_depth(x,y,depth,oTest);
					testobject.creator = id;
				}
			}
			else
			{
				destroy = true;
			}
			break;
		}
	}
}
else
{
	with(glowback)
	{
		instance_destroy();
	}
	
	with(glowfront)
	{
		instance_destroy();
	}
	
	if(alarm[0] <= 0)
	{
		alarm[0] = explosionspd;
	}
}