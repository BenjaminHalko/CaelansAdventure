/// @desc
if(char <= string_length(text)) or (destroy) SetAlarm(0,5);

var _health = healthbar;
healthbar += (((max(bossHealth,0))/(bossMaxHealth))*100 - healthbar) / 15;

shake = max(_health - healthbar,0);

if(destroy)
borderAlpha += (0 - borderAlpha) / 15;
else
borderAlpha += (1 - borderAlpha) / 15;



switch(room)
{
	default: break;
	
	case rUndergroundBoss:
	{
		if(instance_exists(oBossUnderground))
		{
			bossHealth = oBossUnderground.hp;
			bossMaxHealth = 8;
			if(global.annaramode)
			{
				bossHealth -= 3;
				bossMaxHealth -= 3;
			}
		}
		else
		{
			destroy = true;
		}
		break;
	}
	case rDesertNight:
	{
		if(instance_exists(oDesertBoss))
		{
			bossHealth = oDesertBoss.hp;
			bossMaxHealth = 15;
			if(global.annaramode)
			{
				bossHealth -= 3;
				bossMaxHealth -= 3;
			}
		}
		else
		{
			destroy = true;
		}
		break;
	}
	case rSnowNight:
	{
		if(instance_exists(oSnowBoss))
		{
			bossHealth = oSnowBoss.hp;
			bossMaxHealth = 5;
			if(global.annaramode)
			{
				bossMaxHealth = 3;
			}
		}
		else
		{
			destroy = true;
		}
		break;
	}
	case rForestNight:
	{
		if(instance_exists(oForestBoss))
		{
			bossHealth = oForestBoss.hp;
			bossMaxHealth = 7;
			if(global.annaramode)
			{
				bossHealth -= 3;
				bossMaxHealth -= 3;
			}
		}
		else
		{
			destroy = true;
		}
		break;
	}
	case rHauntedHouseNight:
	{
		if(instance_exists(oHauntedHouseBoss))
		{
			if(oHauntedHouseBoss.destroy)
			{
				bossHealth = 0;
			}
		}
		else
		{
			destroy = true;
		}
		break;
	}
	case rAirshipBoss:
	{
		if(instance_exists(oFlyingShip))
		{
			bossHealth = 7-oFlyingShip.phase;
			bossMaxHealth = 7;
			if(global.annaramode)
			{
				bossHealth -= 2;
				bossMaxHealth -= 2;
			}
		}
		else
		{
			destroy = true;
		}
		break;
	}
	case rFinalBossEvilChrisFight:
	{
		if(instance_exists(oEvilChrisBoss))
		{
			bossHealth = oEvilChrisBoss.hp;
			bossMaxHealth = 15;
		}
		else
		{
			destroy = true;
		}
		break;
	}
	case rFinalBossEvilRoomFight:
	{
		if(instance_exists(oEvilRoomBoss))
		{
			bossHealth = oEvilRoomBoss.hp;
			bossMaxHealth = 10000;
		}
		else
		{
			destroy = true;
		}
		break;
	}
}