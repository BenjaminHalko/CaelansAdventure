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

depth = -100000000000000000000000000;

if(key == OnScreenKeys.LEFT)
{
	sprite_index = sOnScreenKeyDPad;
	
	var button = instance_create_depth(x,y,depth,oOnScreenButtons);
	button.sprite_index = sOnScreenKeyDPad;
	button.image_angle = 90;
	button.key = OnScreenKeys.UP;
	
	var button = instance_create_depth(x,y,depth,oOnScreenButtons);
	button.sprite_index = sOnScreenKeyDPad;
	button.image_angle = 180;
	button.key = OnScreenKeys.RIGHT;
	
	var button = instance_create_depth(x,y,depth,oOnScreenButtons);
	button.sprite_index = sOnScreenKeyDPad;
	button.image_angle = 270;
	button.key = OnScreenKeys.LEFT;
}
else if(key == OnScreenKeys.A)
{
	sprite_index = sOnScreenKeyA;
}
else if(key == OnScreenKeys.B)
{
	sprite_index = sOnScreenKeyB;
}