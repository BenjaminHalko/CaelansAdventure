/// @desc
if(activated)
{
	if(image == noone)
	{
		switch(room)
		{
			case rGrasslands: default:
			{
				image_index = 0;
				break;
			}
			case rDesert:
			{
				image_index = 1;
				break;
			}
		}
	}
	else if(image == -1)
	{
		image_speed = 1;
	}
	else
	{
		image_index = image;
	}
	activated = false;
}