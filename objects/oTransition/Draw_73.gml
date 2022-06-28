/// @desc
if(flash) and (mode != TRANS_MODE.OFF)
{
	iconrotation -= 5;
	var circles = 5;
	if(!quitmode)
	{
		draw_set_alpha(0.6);
		draw_set_colour(c_white);
		for(var i = 0; i < circles; i++)
		{
			draw_circle(xx,yy,(camera_get_view_width(view_camera[0])+256)*max(0,((percent*circles)-i)),false);
		}
		draw_set_alpha(1);
	
		DrawIcon(iconx,icony,15,max(0,percent)*((camera_get_view_width(view_camera[0])+256)*2/sprite_get_width(sIcon)),iconrotation,1,true);
	}
	else
	{
		draw_set_alpha(0.6);
		draw_set_colour(c_white);
		for(var i = 0; i < circles; i++)
		{
			draw_circle(xx,yy,(camera_get_view_width(view_camera[0])+256)*max(0,((1.2*circles)-i)),false);
		}
		draw_set_alpha(1);
	
		DrawIcon(iconx,icony,15,max(0,1.2)*((camera_get_view_width(view_camera[0])+256)*2/sprite_get_width(sIcon)),iconrotation,1,true);
	}
}