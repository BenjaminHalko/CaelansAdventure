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
else
{
	var camera = view_get_camera(0);

	var y1 = camera_get_view_y(camera);

	var w = camera_get_view_width(camera);
	var h = camera_get_view_height(camera);

	var y2 = y1 + h;

	x = (oCamera.x)-(((amount-1)/2)*(160*image_xscale))+((number-1)*(160*image_xscale));
	y = y2-(h/5);

	image_xscale = w/display_get_gui_width();
	image_yscale = h/display_get_gui_height();
	
	if(alpha) and (active)
	image_alpha = Approch(image_alpha,1,oTest.objectalphafade);
	
	if(oTest.mode == 1) active = true;
}

if(global.test == 34) and (number == 2) and (image_alpha == 1) and (!instance_exists(oMultipleChoiceEnd))
{
	with(oMultipleChoice)
	{
		if(number == 1)
		{
			depth = other.depth+1;
		}
	}
	var e = instance_create_depth(x,y,depth-900,oMultipleChoiceEnd);
	e.number = number;
	e.text = text;
	e.image_index = image_index;
	e.image_blend = image_blend;
	e.image_xscale = image_xscale;
	e.image_yscale = image_yscale;
	e.red = false;
	image_alpha = 0;
	active = false;
	instance_change(oMultipleChoiceClickable,true);
}