/// @desc
var sprite = sLevelSelectSreenshots;
var pos = oLevelSelect.pos;

if(global.user == USER.ANNARA) sprite = sLevelSelectScreenshotsAnnara;
if(global.user == USER.CHRIS) and (oLevelSelect.pos == 0) sprite = sLevelSelectScreenshotsChris;

if(collectedanextra) and (oLevelSelect.pos == 0)
{
	sprite = sLevelSelectTitleWithExtras;
	pos = global.user;
}
draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,image_blend,image_alpha);
if(oLevelSelect.y == oLevelSelect.ystart-(oLevelSelect.pos*oLevelSelect.margin)) and ((oLevelSelect.pos != 20) or (oLevelSelect.playedsecretlevel))
draw_sprite_stretched(sprite,pos,x,y,sprite_width,sprite_height);