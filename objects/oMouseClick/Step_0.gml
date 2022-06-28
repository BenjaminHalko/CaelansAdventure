/// @desc
radius += 2;
if(radius >= 16)
{
	alpha = Approch(alpha,0,0.1);
	
	if(alpha <= 0) instance_destroy();
}