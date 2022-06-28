/// @desc
if(debug)
{
	file_delete(Settingfile);
	file_delete("CaelanSave.ini");
	file_delete("AnnaraSave.ini");
	game_restart();
}