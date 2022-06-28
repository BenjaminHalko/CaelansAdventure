/// @desc
var sprite = sLevelSelectSreenshots;
draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,image_blend,image_alpha);
if(oLevelSelect.y == oLevelSelect.ystart-(oLevelSelect.pos*oLevelSelect.margin))
draw_sprite_stretched(sprite,oLevelSelect.pos,x,y,sprite_width,sprite_height);