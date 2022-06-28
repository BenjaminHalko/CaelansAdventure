/// @desc 

DrawSetText(c_green,fMenu,fa_left,fa_middle);
for(var i=0; i<=array_length_1d(text)-1;i++)
{
	if(i != 4) or (global.gamepadconnected)
	{
		colour = c_white;
		if(i==pos) and (selected)
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
}

if(global.gamepadconnected)
{
	if(global.rumble)
	{
		var t = "On";
	}
	else
	{
		var t = "Off";
	}
	
	draw_set_color(c_white);
	draw_set_font(fSlider);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	draw_text(x+487,y+(margin*4),t);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_sprite(sCheckbox,global.rumble,x+512,y+(margin*4));
}