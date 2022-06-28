/// @desc
draw_self();
draw_sprite_ext(sForestBoss,1,x,y,1,1,-image_angle*1.5,image_blend,1);
draw_sprite_ext(sForestBoss,2,x,y,1,1,0,image_blend,0.3);
draw_sprite_ext(sForestBoss,3,x,y,1,1,0,image_blend,1);
draw_sprite_ext(sForestBoss,4,x,y,1,1,0,image_blend,Wave(0,1,2,0));
draw_sprite_ext(sForestBoss,5,x,y,1,1,eyeangle,image_blend,1);
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