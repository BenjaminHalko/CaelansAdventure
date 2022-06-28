/// @desc ChooseDependingOnCharacter
/// @arg Caelan
/// @arg Annara
/// @arg Benjamin
/// @arg Emma
function ChooseDependingOnCharacter(argument0, argument1, argument2, argument3) {

	switch(global.character)
	{
		case PLAYER.C: default:
		{
			return argument0;
			break;
		}
		case PLAYER.A:
		{
			return argument1;
			break;
		}
		case PLAYER.B:
		{
			return argument2;
			break;
		}
		case PLAYER.E:
		{
			return argument3;
			break;
		}
	}


}
