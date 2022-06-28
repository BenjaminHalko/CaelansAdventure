/// @desc

if(instance_exists(oRecorder)) and (instance_exists(oPlayer))
{
	drawx += ((xTo - (credits_view_w/2) + (credits_view_w/3)*oPlayer.image_xscale - drawx) / 10);
	drawy += ((yTo - (credits_view_h/2) - 25  - drawy) / 10);
		
	drawx = median(buff,drawx,room_width-buff);
	drawy = median(buff,drawy,room_height-buff);
	
	draw_set_color(c_red);
	draw_rectangle(drawx,drawy,drawx+credits_view_w,drawy+credits_view_h,true);
}