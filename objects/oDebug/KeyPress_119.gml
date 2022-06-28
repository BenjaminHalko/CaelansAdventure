/// @desc
if(debug)
{
	global.unlockedallextras = true;
	for(var i = 1; i <= global.numberofextras; i++)
	{
		Save("Extras","Collected - "+string(i),true);
		Save("Extras","Watched - "+string(i),true);
	}
}
