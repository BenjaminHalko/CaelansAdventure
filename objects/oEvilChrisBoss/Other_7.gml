/// @desc Stop Sprite
switch(sprite_index)
{
	case sEvilChrisBossIntro:
	{
		image_speed = 0;
		image_index = image_number-1;
		break;
	}
	case sEvilChrisBossStand:
	{
		image_speed = 0;
		image_index = image_number-1;
		break;
	}
	case sEvilChrisBossTurn:
	{
		sprite_index = sEvilChrisBossFloat;
		
		break;
	}
	case sEvilChrisBossLook:
	{
		defeatphase++;
		break;
	}
}