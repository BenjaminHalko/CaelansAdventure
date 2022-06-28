/// @desc

if(global.completed) and (!Load("Extras","Collected - 7",false))
{
	text = "Good Job!\nTry Jumping\nover the door!";
	global.signVoices[rHouse,3] = vVaneesaHome2;
}
else
{
	text = "Good Luck!";
	global.signVoices[rHouse,3] = vVaneesaHome1;
}

// Inherit the parent event
event_inherited();

var dir = sign(oPlayer.x - x);
if(dir != 0) image_xscale = dir;

if(dir == -1)
{
	with(oText)
	{
		if(creator == noone)
		{
			instance_destroy();
			oCamera.follow = oPlayer.id;
		}
	}
}