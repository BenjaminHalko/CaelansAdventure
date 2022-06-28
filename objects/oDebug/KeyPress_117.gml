/// @desc
if(debug)
{
	ini_open(Savefile);
	ini_section_delete("Extras");
	ini_key_delete("Settings","InfinteJump");
	ini_key_delete("Settings","UnlockedInfinteJump");
	ini_key_delete("Extras","PlayedSecretLevel");
	ini_close();
	game_restart();
}