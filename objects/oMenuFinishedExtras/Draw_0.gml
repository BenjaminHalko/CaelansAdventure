/// @desc 

DrawSetText(c_green,fMenu,fa_left,fa_middle);
for(var i=0; i<=array_length_1d(text)-1;i++)
{
	if (i == 1) and (extrasglow)
	{
		glow = make_color_hsv(colour_get_hue(c_yellow),Wave(0,255,2,0),255);
		colour = glow;
	}
	else
		colour = c_white;
	if(i==pos)
	{
		fontsize[i] = Approch(fontsize[i],1,0.05);
		draw_text_transformed_color(x,y+(i*margin),text[i],percent*fontsize[i],percent*fontsize[i],image_angle,colour,colour,colour,colour,1);
	}
	else
	{
		fontsize[i] = Approch(fontsize[i],0.64,0.05);
		draw_text_transformed_color(x,y+(i*margin),text[i],percent*fontsize[i],percent*fontsize[i],image_angle,colour,colour,colour,colour,(1/255)*140);
	}
}