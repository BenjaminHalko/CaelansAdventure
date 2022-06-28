/// @desc
vsp += grv;
if(place_meeting(x,y+vsp,pCollide))
{
	SetAlarm(0,irandom_range(room_speed,room_speed/4));
	vsp = 0;
}
y += vsp;

if(place_meeting(x,y+1,pCollide))
{
	sprite_index = spritestand[person];
}
else
{
	if(vsp >= 0)
	{
		if(sprite_index != spritefall[person])
		{
			image_speed = 1;
			image_index = 0;
		}
		sprite_index = spritefall[person];
	}
	else
	{
		if(sprite_index != spritejump[person]) 
		{
			image_speed = 1;
			image_index = 0;
		}
		sprite_index = spritejump[person];		
	}
}

if(sign(oPlayer.x - x) != 0)
image_xscale = sign(oPlayer.x - x);