/// @desc
if(!activate)
{
	vsp += grv;
	y += vsp;
	image_index = oEvilChrisBoss.playerheart+1;
	if(image_index == 5) image_index = 1;
	
}
else if(attack)
{
	if(point_in_circle(x,y,oEvilChrisBoss.x,oEvilChrisBoss.y,200))
	{
		var obj = oEvilChrisBoss;
		mspd = Approch(mspd,3,0.5);
	}
	else
	{
		var obj = oPlayer;
		SetAlarm(1,((room_speed*oEvilChrisBoss.playerhealth)));
	}
	var dir = point_direction(x,y,obj.x,obj.y);
	athsp += lengthdir_x(spd,dir);
	atvsp += lengthdir_y(spd,dir);
	
	
	athsp = median(mspd,athsp,-mspd);
	atvsp = median(mspd,atvsp,-mspd);
	
	x += athsp;
	y += atvsp;
	
	if(place_meeting(x,y,oEvilChrisBoss))
	{
		instance_destroy();
		oEvilChrisBoss.hp-=3;
		oEvilChrisBoss.allowhit = false;
		oEvilChrisBoss.alarm[2] = room_speed;
	}
}
else
{
	if(alarm[0] <= 0)
	{
		x = Approch(x,oPlayer.x,10);
		y = Approch(y,oPlayer.y+10,10);
		scale = Approch(scale,1,0.1);
		image_xscale = scale;
		image_yscale = scale;
	
		if(x == oPlayer.x) and (y == oPlayer.y+10) and (scale == 1) and (oEvilChrisBoss.playerheart != 4)
		{
			oEvilChrisBoss.playerheart += 1;
			if(oEvilChrisBoss.playerheart != 4)
			{
				instance_destroy();
			}
			else
			{
				alarm[0] = room_speed/2;
			}
		}
	}
	else
	{
		x = oPlayer.x;
		y = oPlayer.y+10;
	}
}

if(oEvilChrisBoss.hp <= 0) instance_destroy();