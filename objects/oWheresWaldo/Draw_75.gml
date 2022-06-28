/// @desc
var x1 = 0;
var y1 = 0;

var w = display_get_gui_width();
var h = display_get_gui_height();

draw_set_alpha(alpha);
var y2 = y1 + h;

for(var i = 0; i < array_length_1d(extraindex); i++)
{
	for(var j = 0; j < (groupamount[i]/array_length_1d(extraindex)); j++)
	{
		draw_sprite_ext(sprite_index,extraindex[shufflednum[i]],extrax[shufflednum[i],j]+(x1+(w/2)),extray[shufflednum[i],j]+(y2-(h/4)),objectscale,objectscale,extrarotation[shufflednum[i],j],extrablend[shufflednum[i]],alpha);
	}
}
draw_sprite_ext(sprite_index,image_index,xx+(x1+(w/2)),yy+(y2-(h/4)),scale,scale,image_angle,image_blend,image_alpha);
draw_set_alpha(1);