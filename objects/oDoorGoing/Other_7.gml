/// @desc
if(!deactivated)
{
	image_speed = 0;
	if(phase == 3)
	image_index = 0;
	else
	image_index = image_number-1;
	alarm[1] = room_speed/2;
	phase = 3;
}