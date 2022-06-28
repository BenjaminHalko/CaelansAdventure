/// @desc
enum OnScreenKeys
{
	UP,
	DOWN,
	LEFT,
	RIGHT,
	A,
	B
}

global.onScreenButtonHide = true;
image_alpha = 0.75;
image_speed = 0;
image_index = 0;
image_alpha = 0;

if(key == OnScreenKeys.A)
{
	sprite_index = sOnScreenKeyA;
}
else if(key == OnScreenKeys.B)
{
	sprite_index = sOnScreenKeyB;
}
else
{
	sprite_index = sOnScreenKeyDPad;
}

depth = -100000000000000000000;
image_xscale = 5;
image_yscale = 5;

instance_destroy();