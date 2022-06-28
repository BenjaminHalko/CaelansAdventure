/// @desc
SetAlarm(0,random_range(5,6));
if(move)
{
	x -= 3;
	y = Approch(y,ystart,5);
	with(oPlayer)
	{
		if(place_meeting(x+hsp,y,oFinalBossWall))
		{
			var h = sign(hsp);
			if(h == 0) h = 1;
		
			while(!place_meeting(x+h,y,oFinalBossWall)) x += h;
		
			if(hsp >= 0)
			{
				x -= 3;
			}
			
			if(sprite_index == spriterun[global.character,snow])
				sprite_index = spritestand[global.character,snow];
		
			image_xscale = h;
		}
	}
	
	if(x <= 32)
	{
		if(oEvilRoomBoss.phase == 18)
		oEvilRoomBoss.alarm[0] = room_speed;
		else
		oEvilRoomBoss.alarm[0] = room_speed/2;
		instance_destroy();
	}
}
else if(active)
{
	SetAlarm(1,room_speed+((xstart-6)/3));
	image_alpha = Approch(image_alpha,1,0.1);
	y = Approch(y,room_height/4*3-room_height/3+ystart/3,5);
	x = Approch(x,632+alarm[1]/8,5);
}
