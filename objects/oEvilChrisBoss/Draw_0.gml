/// @desc Draw Hit & Icon
if(attack == 0) and (hp > 0)
{
	if(attackphase == 1)
	{
		draw_sprite_stretched(sWarning,warningindex,96,92,room_width/2-96,360);
	}
	else
	{
		draw_sprite_stretched(sWarning,warningindex,room_width/2,92,room_width/2-96,360);
	}
}
for(var i = 0; i < 3; i++)
{
		
	draw_sprite_ext(sPurpleFire,fireindex-i*30,x+Wave(-3,3,2.2,i*50),y+Wave(-3,3,3.4,i*50)-10,Wave(0.5,0.7,3.3,i*50),Wave(0.5,0.7,2.1,i*50),Wave(5,-5,2.5,i*50),c_white,firealpha);
}
draw_self();
if(allowhit == false)
{
	Rumble();
	drawwhite = !drawwhite;
	if(drawwhite)
	{
		shader_set(shWhite);
		draw_self();
		shader_reset();
	}
}
draw_sprite_ext(sEvilChrisHover,0,x,y-100,1,1,0,c_white,ghostalpha);
draw_sprite_ext(sprite_index,1,x,y,-1,1,0,c_white,deadalpha*image_alpha);
DrawIcon(iconx,icony,hp,iconscale,iconangle,1,true);