/// @desc Inputs

//Keyboard Inputs
keyboard_key_up_pressed = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
keyboard_key_down_pressed = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
keyboard_key_left_pressed = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
keyboard_key_right_pressed = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
keyboard_key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyboard_key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyboard_key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyboard_key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyboard_key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
keyboard_key_enter = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_shift) or keyboard_check_pressed(vk_enter);
keyboard_key_back = keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_backspace);
keyboard_key_pause = keyboard_check_pressed(vk_escape) or keyboard_check_pressed(vk_tab);
keyboard_key_exitplane = keyboard_check_pressed(vk_space);

//Gamepad Inputs
gamepad_key_up_pressed = gamepad_button_check_pressed(global.gp,gp_padu);
gamepad_key_down_pressed = gamepad_button_check_pressed(global.gp,gp_padd);
gamepad_key_left_pressed = gamepad_button_check_pressed(global.gp,gp_padl);
gamepad_key_right_pressed = gamepad_button_check_pressed(global.gp,gp_padr);
gamepad_key_left = gamepad_button_check(global.gp,gp_padl);
gamepad_key_right = gamepad_button_check(global.gp,gp_padr);
gamepad_key_up = gamepad_button_check(global.gp,gp_padu);
gamepad_key_down = gamepad_button_check(global.gp,gp_padd);
gamepad_key_jump = gamepad_button_check_pressed(global.gp,gp_padu) or gamepad_button_check_pressed(global.gp,gp_face1) or gamepad_button_check_pressed(global.gp,gp_face2);
gamepad_key_enter = gamepad_button_check_pressed(global.gp,gp_face1) or gamepad_button_check_pressed(global.gp,gp_start);
gamepad_key_back = gamepad_button_check_pressed(global.gp,gp_face2) or gamepad_button_check_pressed(global.gp,gp_select);
gamepad_key_pause = gamepad_button_check_pressed(global.gp,gp_select) or gamepad_button_check_pressed(global.gp,gp_start);
gamepad_key_exitplane = gamepad_button_check_pressed(global.gp,gp_face1);

//End Keys
if(instance_exists(oReplay)) and (room != rInt)
{
	key_up_pressed = false;
	key_down_pressed = false;
	key_left_pressed = false;
	key_right_pressed = false;
	key_left = oReplay.record_key_left[oReplay.frames];
	key_right = oReplay.record_key_right[oReplay.frames];
	key_up = false;
	key_down = false;
	key_jump = oReplay.record_key_jump[oReplay.frames];
	key_enter = false;
	key_back = false;
	key_pause = false;
	key_exitplane = false;
}
else
{
	key_up_pressed = keyboard_key_up_pressed or gamepad_key_up_pressed;
	key_down_pressed = keyboard_key_down_pressed or gamepad_key_down_pressed;
	key_left_pressed = keyboard_key_left_pressed or gamepad_key_left_pressed;
	key_right_pressed = keyboard_key_right_pressed or gamepad_key_right_pressed;
	key_left = keyboard_key_left or gamepad_key_left;
	key_right = keyboard_key_right or gamepad_key_right;
	key_up = keyboard_key_up or gamepad_key_up;
	key_down = keyboard_key_down or gamepad_key_down;
	key_jump = keyboard_key_jump or gamepad_key_jump;
	key_enter = keyboard_key_enter or gamepad_key_enter;
	key_back = keyboard_key_back or gamepad_key_back;
	key_pause = keyboard_key_pause or gamepad_key_pause;
	key_exitplane = keyboard_key_exitplane or gamepad_key_exitplane;
}