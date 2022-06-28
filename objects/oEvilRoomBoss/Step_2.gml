/// @desc
if(alarm[3] > 0)
{
	if(oPlayer.sprite_index == oPlayer.spriterun[global.character,oPlayer.snow])
	oPlayer.sprite_index = oPlayer.spritestand[global.character,oPlayer.snow];
	
	with(oPlayer)
	{
		hsp = -3;
		if(place_meeting(x+hsp,y,oWallGrass))
		{
			hsp = 0;
		}	
		x += hsp;
	}
}