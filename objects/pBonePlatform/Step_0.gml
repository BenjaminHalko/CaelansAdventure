/// @desc
if(activate)
{
	image_alpha = Approch(image_alpha,1,0.1);
}
else
{
	image_alpha = Approch(image_alpha,0,0.1);
	if(image_alpha == 0)
	{
		activate = true;
		instance_deactivate_object(id);
	}
}