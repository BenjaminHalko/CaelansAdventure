/// @desc
draw_self();

for(var i = 0; i <= totalkeys; i++)
{
	draw_sprite_ext(sKeyboardKeys,image[i],x+keyX[i]*image_xscale,y+keyY[i]*image_yscale,image_xscale,image_yscale,0,c_white,keyalpha[i]);
}