/// @desc
if(alarm[2] <= 0) and (alarm[3] <= 0)
{
	if(image_index >= frametoacivate) and (blast == noone)
	{
		blast = instance_create_layer(x+lengthdir_x(10,image_angle),y+lengthdir_y(10,image_angle),"Blast",oBlastAttack);
		blast.image_angle = image_angle;
		blast.image_yscale = image_yscale;
		blast.depth = depth+1;
	}

	image_alpha = Approch(image_alpha,destroy,0.05);

	if(image_alpha == 0) instance_destroy();
}