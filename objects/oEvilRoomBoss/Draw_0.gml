/// @desc
with(oPlayer)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_dkgray,1);
	draw_sprite_part_ext(sprite_index,image_index,0,sprite_height-(sprite_height*(other.playerhealth/other.playermaxhealth)),sprite_width*image_xscale,sprite_height*other.playerhealth/other.playermaxhealth,x-(24*image_xscale),y-(sprite_height*(other.playerhealth/other.playermaxhealth))+24,image_xscale,image_yscale,c_white,1);
	draw_sprite_part_ext(sprite_index,image_index,0,sprite_height-(sprite_height*(other.alarm[3]/other.playerfreeze)),sprite_width*image_xscale,sprite_height*(other.alarm[3]/other.playerfreeze),x-(24*image_xscale),y-(sprite_height*(other.alarm[3]/other.playerfreeze))+24,image_xscale,image_yscale,c_black,0.5);

	if(other.playerallowhit == false)
	{
		Rumble();
		other.playerflash = !other.playerflash;
		if(other.playerflash)
		{
			shader_set(shWhite);
			draw_self();
			shader_reset();
		}
	}
}

var yoffset = 254;
draw_sprite(sEvilRoomBossStechable,0,x,y+yoffset);
draw_sprite_ext(sEvilRoomBossStechable,1,x,y+yoffset,1,strechlength/65,0,c_white,1);
draw_sprite(sEvilRoomBossStechable,2,x,y-strechlength+66+yoffset);

if(flashing)
{
	flash = !flash;
	if(flash)
	{
		shader_set(shWhite);
		draw_sprite(sEvilRoomBossStechable,0,x,y+yoffset);
		draw_sprite_ext(sEvilRoomBossStechable,1,x,y+yoffset,1,strechlength/65,0,c_white,1);
		draw_sprite(sEvilRoomBossStechable,2,x,y-strechlength+66+yoffset);
		shader_reset();
	}
}