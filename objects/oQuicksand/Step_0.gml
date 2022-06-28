/// @desc
if(instance_position(oPlayer.x,oPlayer.bbox_top,oQuicksand) != noone)
{
	if(!invisible)
	SetAlarm(0,max(point_distance(x,y,oPlayer.x,oPlayer.y)/(room_speed/4),1));
}
else
{
	if(invisible)
	SetAlarm(0,max(point_distance(x,y,oPlayer.x,oPlayer.y)/(room_speed/4),1));
}

if(invisible)
{
	image_alpha = Approch(image_alpha,0.75,0.05);
}
else
{
	image_alpha = Approch(image_alpha,1,0.05);
}