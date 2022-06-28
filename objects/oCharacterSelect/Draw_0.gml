/// @desc 
DrawIcon(room_width/2,room_height/2,16,iconscale,iconrotation,iconalpha,true);
draw_set_font(fMenu);
draw_set_color(c_white);
draw_text(room_width/2,room_height/5,"Character\nSelect");
DrawSetText(c_white,fCharacterSelect,fa_middle,fa_top);
for(var i = 0; i <= 4; i++)
{
	if(i == pos)
	{
		currentrectanglewidth[i] = Approch(currentrectanglewidth[i],rectanglewidth,rectanglewidth/spd);
		currentrectangleheight[i] = Approch(currentrectangleheight[i],rectangleheight,rectangleheight/spd);
		currentrectanglealpha[i] = Approch(currentrectanglealpha[i],1,1/spd);
	}
	else
	{
		currentrectanglewidth[i] = Approch(currentrectanglewidth[i],rectanglewidth*2,rectanglewidth/spd);
		currentrectangleheight[i] = Approch(currentrectangleheight[i],rectangleheight*2,rectangleheight/spd);
		currentrectanglealpha[i] = Approch(currentrectanglealpha[i],0,1/spd);
	}
	
	var xx = ((room_width-(margin*2))/4)*(i+1);
	var yy = (room_height/3)*2;
	
	if(i == 4)
	{
		xx = room_width/2;
		yy = (room_height/7)*6;
		draw_text(xx,yy,"Back");
	}
	else
	{
		draw_sprite(sprite[i],index+i,xx,yy-(textmargin/2));
		draw_text(xx,yy+(textmargin/2),character[i]);
	}
	
	for(var j = 0; j <= 10; j++)
	{
		if(currentrectanglewidth[i]-j > 0)
		{
			draw_set_alpha(currentrectanglealpha[i]);
			draw_rectangle(xx-(currentrectanglewidth[i]/2)+j,yy-(currentrectangleheight[i]/2)+j,xx+(currentrectanglewidth[i]/2)-j,yy+(currentrectangleheight[i]/2)-j,true);
			draw_set_alpha(1);
		}
	}
}