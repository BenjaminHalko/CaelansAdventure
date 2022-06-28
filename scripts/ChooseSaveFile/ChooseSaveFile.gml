function ChooseSaveFile() {
	switch(global.user)
	{
		default:
		{
			return "CaelanSave.ini";
			break;
		}
		case USER.ANNARA:
		{
			return "AnnaraSave.ini";
			break;
		}
		case USER.CHRIS:
		{
			return "ChrisSave.ini";
			break;
		}
	}
}
