/// @desc
if(doornumber == global.airshipdoor)
{
	oPlayer.image_alpha = 0;
	oPlayer.x = x;
	oPlayer.y = y - (oPlayer.bbox_bottom - oPlayer.y);
	oCamera.x = x;
	oCamera.y = y - (oPlayer.bbox_bottom - oPlayer.y);
	phase++;
	image_index = image_number-1;
	oPlayer.hascontrol = true;
	oPlayer.targetx = noone;
}