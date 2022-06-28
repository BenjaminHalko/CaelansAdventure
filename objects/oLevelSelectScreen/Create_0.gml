/// @desc
collectedanextra = false;
ini_open(Savefile);
for(var i = 0; i <= global.numberofextras; i++)
{
	if(ini_read_real("Extras","Collected - "+string(i),false))
	{
		collectedanextra = true;
		break;
	}
}
ini_close();