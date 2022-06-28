/// @desc

// Inherit the parent event
event_inherited();

if(starting)
{
	Rumble();
	PlaySong(mEvilChris,true);
	image_alpha = Approch(image_alpha,1,alphaspd);
	if(image_alpha == 1)
	starting = false;
}

if(ending)
{
	Rumble();
	image_alpha = Approch(image_alpha,0,alphaspd);
	if(image_alpha == 0)
	instance_destroy();
}