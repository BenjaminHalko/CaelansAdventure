/// @desc
DrawSetText(c_white,fMenu,fa_left,fa_middle);
for(var i = 0; i <= array_length_1d(text)-1; i++)
{
	colour[i] = c_white;
	if(collected[i]) or (i == 0)
	{
		var txt = text[i];
		if(!watched[i]) and (i != 0)
		{
			colour[i] = make_color_hsv(colour_get_hue(c_yellow),Wave(0,255,2,0),255);
		}
	}
	else
	{
		var txt = "?????";
	}
	
	if(i==pos)
	{
		fontsize[i] = Approch(fontsize[i],0.55,0.01);
		draw_text_transformed_color(x,y+(i*margin),txt,percent*fontsize[i],percent*fontsize[i],image_angle,colour[i],colour[i],colour[i],colour[i],1);
	}
	else
	{
		fontsize[i] = Approch(fontsize[i],0.4,0.01);
		draw_text_transformed_color(x,y+(i*margin),txt,percent*fontsize[i],percent*fontsize[i],image_angle,colour[i],colour[i],colour[i],colour[i],(1/255)*140);
	}
}

if(infrontalpha != 0)
{
	draw_set_alpha(infrontalpha);
	draw_sprite(sExtrasBorder,0,0,0);
	if(global.annaramode)
	draw_sprite_stretched(sExtrasAnnara,pos-1,0+fullscreenmargin,0+fullscreenmargin,room_width-(fullscreenmargin*2),room_height-(fullscreenmargin*2));
	else
	draw_sprite_stretched(sExtras,pos-1,0+fullscreenmargin,0+fullscreenmargin,room_width-(fullscreenmargin*2),room_height-(fullscreenmargin*2));
	draw_set_alpha(1);
}