/// @desc
var sprite = sLevelSelectSreenshots;
var pos = oLevelSelect.pos;

if(global.annaramode) sprite = sLevelSelectScreenshotsAnnara;

if(collectedanextra) and (oLevelSelect.pos == 0)
{
	sprite = sLevelSelectTitleWithExtras;
	pos = global.annaramode;
}
draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,image_blend,image_alpha);
if(oLevelSelect.y == oLevelSelect.ystart-(oLevelSelect.pos*oLevelSelect.margin)) and ((oLevelSelect.pos != 20) or (oLevelSelect.playedsecretlevel))
draw_sprite_stretched(sprite,pos,x,y,sprite_width,sprite_height);