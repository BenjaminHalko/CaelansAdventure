/// @desc Draw Player Health
with(oPlayer)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_dkgray,1);
	draw_sprite_part_ext(sprite_index,image_index,0,sprite_height-(sprite_height*(other.playerhealth/other.playermaxhealth)),sprite_width*image_xscale,sprite_height*other.playerhealth/other.playermaxhealth,x-(24*image_xscale),y-(sprite_height*(other.playerhealth/other.playermaxhealth))+24,image_xscale,image_yscale,c_white,1);

	if(other.playerallowhit == false)
	{
		Rumble();
		other.playerdrawwhite = !other.playerdrawwhite;
		if(other.playerdrawwhite)
		{
			shader_set(shWhite);
			draw_self();
			shader_reset();
		}
	}
	
	for(var i = 1; i <= other.playerheart; i++)
	draw_sprite(sHeart,i,x,y+10);
}