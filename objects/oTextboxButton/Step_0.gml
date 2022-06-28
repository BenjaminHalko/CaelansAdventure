/// @desc
if(!instance_exists(oTest))
{
	instance_destroy();
}
else if(question != oTest.question)
{
	image_alpha = Approch(image_alpha,0,oTest.objectalphafade);
	if(image_alpha == 0) instance_destroy();
}
else
{
	var camera = view_get_camera(0);

	var x1 = camera_get_view_x(camera);
	var y1 = camera_get_view_y(camera);

	var w = camera_get_view_width(camera);
	var h = camera_get_view_height(camera);

	var y2 = y1 + h;

	x = (x1+(w/2));
	y = y2-(h/4)+(h/15);

	image_xscale = w/display_get_gui_width();
	image_yscale = h/display_get_gui_height();

	Inputs();
	if(key_enter) and (!keyboard_check_pressed(vk_space)) and (!keyboard_check_pressed(vk_shift)) and ((!global.gamepadconnected) or (!gamepad_button_check_pressed(global.gp,gp_face1)))
	{
		AnswerTest(oTextbox.text);
	
		if(string_pos(oTest.answer,oTextbox.text) == 0) or ((string_digits(oTest.answer) != "") and (string_digits(oTextbox.text) != oTest.answer))
		{
			oTextbox.text = "";
			keyboard_string = "";
		}
	}

	image_alpha = Approch(image_alpha,1,oTest.objectalphafade);
}