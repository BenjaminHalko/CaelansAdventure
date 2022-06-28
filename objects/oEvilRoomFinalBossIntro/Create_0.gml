/// @desc
alarm[0] = room_speed*3;
alarm[1] = room_speed*5;
image_alpha = 0;
alpha = 0;
if(!instance_exists(oBackgroundManager))
{
	var manage = instance_create_layer(x,y,layer,oBackgroundManager);
	manage.lay = "Trees";
	var manage = instance_create_layer(x,y,layer,oBackgroundManager);
	manage.lay = "Mountains";
}