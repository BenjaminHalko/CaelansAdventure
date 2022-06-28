/// @desc
if(room == rFinalBossAirship) or (room == rFinalBossCastle) or (room == rFinalBossDesert) or (room == rFinalBossForest) or (room == rFinalBossGrasslands) or (room == rFinalBossHauntedHouse) or (room == rFinalBossSnow) or (room == rFinalBossUnderground) or (oGlobalController.song == mBoss) or (oGlobalController.song == mBossHurry)
{
	image_blend = make_color_hsv(0,Wave(0,230,3,0),255);
}

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
				audio_play_sound(snTestLock,1,false);
				alarm[2] = room_speed*2+doordelay;
			}
			else if(alarm[2] <= room_speed*2)
			{
				var _spd = 3;
				glowfront.image_alpha = Approch(glowfront.image_alpha,0,0.5/(100/_spd));
				glowback.image_alpha = Approch(glowback.image_alpha,0,0.5/(100/_spd));
				lock.y = Approch(lock.y,lock.ystart,_spd);
				if(lock.y == lock.ystart) 
				{
					if(alarm[2] <= room_speed) lock.blend = Approch(lock.blend,0,0.002);
				}
				else
				{
					ScreenShake(1,1);
					Rumble();
				}
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

screenindex++;
if(screenindex >= sprite_get_number(sTestDoorScreen))
{
	screenindex = 0;
}