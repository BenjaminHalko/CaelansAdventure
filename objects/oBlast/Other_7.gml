/// @desc
if(alarm[2] <= 0)
{
	if(image_speed == 1)
	image_index = frametoacivate;
	else
	{
		destroy = false;
		image_speed = 0;
		image_index = 0;
	}
}