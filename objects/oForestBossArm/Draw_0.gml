/// @desc
draw_self();
draw_sprite_ext(sForestBossArmGlow,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,glowalpha);
draw_sprite_ext(sForestBossArmGlowBack,image_index,x,y,image_xscale,1,image_angle,image_blend,glowalpha);
if(oForestBoss.hp <= 3)
{
	draw_sprite_ext(sForestBossArmGlowLine,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,glowalpha);
}