/// @desc

if(!instance_exists(oTest)) and (window_get_fullscreen())
{
	window_set_cursor(cr_none);
}
else
{
	window_set_cursor(cr_default);
}

if(window_get_cursor() != cr_none) and (global.gamepadconnected)
{
	var xaxis = gamepad_axis_value(global.gp,gp_axislh);
	var yaxis = gamepad_axis_value(global.gp,gp_axislv);
	
	if(xaxis != 0) or (yaxis != 0)
	{
		var spd = 12;
		display_mouse_set(display_mouse_get_x()+spd*xaxis,display_mouse_get_y()+spd*yaxis);
	}
	
	if(instance_exists(oTest))
	{
		if(gamepad_button_check_pressed(global.gp,gp_face1))
		{
			instance_create_depth(x,y,oTest.depth-10000000,oMouseClick);
		
			var _list = ds_list_create();
			var _num = instance_place_list(mouse_x, mouse_y, all, _list, false);
			if _num > 0
			{
				for (var i = 0; i < _num; i++;)
				{
					with(_list[| i])
					{
						event_perform(ev_mouse,ev_left_press);
					}
				}
			}
			ds_list_destroy(_list);
			
			with(all)
			{
				event_perform(ev_mouse,ev_global_left_press);
			}
		}
	
		if(gamepad_button_check(global.gp,gp_face1))
		{
			var _list = ds_list_create();
			var _num = instance_place_list(mouse_x, mouse_y, all, _list, false);
			if _num > 0
			{
				for (var i = 0; i < _num; ++i;)
				{
					with(_list[| i])
					{
						event_perform(ev_mouse,ev_left_button);
					}
				}
			}
			ds_list_destroy(_list);
			
			with(all)
			{
				event_perform(ev_mouse,ev_global_left_button);
			}
		}
	
		if(gamepad_button_check_released(global.gp,gp_face1))
		{
			var _list = ds_list_create();
			var _num = instance_place_list(mouse_x, mouse_y, all, _list, false);
			if _num > 0
			{
				for (var i = 0; i < _num; ++i;)
				{
					with(_list[| i])
					{
						event_perform(ev_mouse,ev_left_release);
					}
				}
			}
			ds_list_destroy(_list);
			
			with(all)
			{
				event_perform(ev_mouse,ev_global_left_release);
			}
		}
	}
}