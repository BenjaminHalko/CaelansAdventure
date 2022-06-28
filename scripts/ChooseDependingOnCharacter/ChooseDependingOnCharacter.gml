/// @desc ChooseDependingOnCharacter
/// @arg Caelan
/// @arg Annara
/// @arg Benjamin
/// @arg Emma

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