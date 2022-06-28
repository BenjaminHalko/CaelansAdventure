/// @desc

image_angle -= 5;

if(alarm[0] > 0)
{
	x = Approch(x,632,5);
	y = Approch(y,room_height/3*2+yy,5);
}
else
{
	x += lengthdir_x(10,dir);
	y += lengthdir_y(10,dir);
}