/// @desc
if(!global.onScreenButtonHide)
{
	if(key == OnScreenKeys.A) or (key == OnScreenKeys.B)
	{
		if(global.screenKeyActive[key]) global.screenKeyActive[key] = noone;
	}
	else
	{
		if(global.screenKeyActivePressed[key]) global.screenKeyActivePressed[key] = noone;
	}

	var touched = false;
	for(var i = 0; i <= 4; i++)
	{
		if(device_mouse_check_button(i,mb_left)) and (instance_position(device_mouse_x_to_gui(i),device_mouse_y_to_gui(i),id) != noone)
		{
			
			touched = true;
			break;
		}
	}

	if(touched)
	{
		image_index = 1;
		if(global.screenKeyActive[key] != noone) global.screenKeyActive[key] = true;
	
		if(key != OnScreenKeys.A) and (key != OnScreenKeys.B)
		if(global.screenKeyActivePressed[key] != noone) global.screenKeyActivePressed[key] = true;
	}
	else
	{
		image_index = 0;
		global.screenKeyActive[key] = false;
		if(key != OnScreenKeys.A) and (key != OnScreenKeys.B)
		global.screenKeyActivePressed[key] = false;
	}
	
	for(var i = gp_face1; i <= gp_start; i++)
	{
		if(gamepad_button_check(global.gp,i)) or (keyboard_check(vk_anykey))
		{ 
			global.onScreenButtonHide = true;
			break;
		}
	}
}
else
{
	for(var i = 0; i <= 4; i++)
	{
		if(device_mouse_check_button(i,mb_left))
		{
			global.onScreenButtonHide = false;
			break;
		}
	}
}

image_alpha = Approch(image_alpha,!global.onScreenButtonHide,0.1);