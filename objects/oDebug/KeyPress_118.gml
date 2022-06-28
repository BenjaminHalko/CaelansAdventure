/// @desc
if(debug)
{
	if(global.completed)
	{
		Save("Info","Completed",false);
	}
	else
	{
		Save("Info","Completed",true);
		Save("Info","Room",Load("Info","Room",rHouse));
	}
	
	game_restart();
}