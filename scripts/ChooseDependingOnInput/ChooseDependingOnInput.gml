/// @desc ChooseDependingOnInput
/// @arg Keyboard
/// @arg Gamepad
function ChooseDependingOnInput(argument0, argument1) {

	if(global.gamepad)
	{
		return argument1;
	}
	else
	{
		return argument0;
	}


}
