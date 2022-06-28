/// @desc
if(!global.completed) or (Load("Extras","Collected - "+string(number),false))
{
	instance_destroy();
}
else
{
	margin = 5;
	destroy = false;
	alphaspd = 0.1;
	image_alpha = 0;
	tutorial = false;
}