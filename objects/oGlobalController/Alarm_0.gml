/// @desc
switch(room)
{
	case rGrasslands:
	{
		SlideTransistion(TRANS_MODE.GOTO,rUnderground);
		break;
	}
	case rUnderground:
	{
		SlideTransistion(TRANS_MODE.GOTO,rDesert);
		break;
	}
	case rDesert:
	{
		SlideTransistion(TRANS_MODE.GOTO,rSnow);
		break;
	}
	case rSnow:
	{
		SlideTransistion(TRANS_MODE.GOTO,rForest);
		break;
	}
	case rForest:
	{
		SlideTransistion(TRANS_MODE.GOTO,rHauntedHouse);
		break;
	}
	case rHauntedHouse:
	{
		SlideTransistion(TRANS_MODE.GOTO,rAirshipOutside);
		break;
	}
	default:
	{
		SlideTransistion(TRANS_MODE.GOTO,rCastleA);
		break;
	}
	case rCastleA:
	{
		SlideTransistion(TRANS_MODE.GOTO,rHouse);
		break;
	}
	case rSecret:
	{
		break;
	}
}