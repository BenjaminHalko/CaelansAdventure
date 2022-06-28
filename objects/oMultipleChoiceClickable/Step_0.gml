/// @desc
if(!instance_exists(oTest))
{
	instance_destroy();
}
else if(question != oTest.question)
{
	if(!alpha)
	{
		image_alpha = Approch(image_alpha,0,oTest.objectalphafade);
		if(image_alpha == 0) instance_destroy();
	}
	else if(!instance_exists(oSoundButton)) and ((!instance_exists(oTestWrittenQuestion)) or (oTestWrittenQuestion.index != noone))
	{
		SetAlarm(1,number*room_speed/6+1);
	}
	else
	{
		SetAlarm(1,(number-1)*room_speed/6+1);
	}
}

if(phase == 1)
{
	image_alpha = Approch(image_alpha,0,0.01);
	if(image_alpha == 0)
	{
		depth = oMultipleChoice.depth+1
		x = oMultipleChoice.x;
		y = oMultipleChoice.y;
		with(oMultipleChoice)
		{
			red = true;
			hsp = 0;
			vsp = 0;
			xxstart = x;
			yystart = y;
			instance_change(oMultipleChoiceEnd,false);
		}
		image_alpha = 1;
		phase = 2;
		text = originaltext;
		image_blend = originalblend;
	}
}

if(phase == 2)
{
	with(oMultipleChoiceEnd)
	{
		if(image_blend == c_red) and ((xxstart != x) or (yystart != y))
		{
			other.phase = 3;
		}
	}
}

if(phase == 3) or (phase == 4)
{
	if(x < camera_get_view_x(view_camera[0])+32*image_xscale)
	{
		hsp = abs(hsp);
	}
	
	if(x > camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32*image_xscale)
	{
		hsp = -abs(hsp);
	}
	
	if(y < camera_get_view_y(view_camera[0])+32*image_yscale)
	{
		vsp = abs(vsp);
	}
	
	if(y > camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32*image_yscale)
	{
		vsp = -abs(vsp);
	}
	
	x += hsp;
	y += vsp;
}

if(phase == 4)
{
	SetAlarm(2,room_speed/10);
}