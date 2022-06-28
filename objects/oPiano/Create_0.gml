/// @desc
var test = global.test;
var question = oTestWrittenQuestion.question;

playing = false;
correct = false;
clicked = false;
pitch = 0;
keyclicked = noone;

keyclickedcolour[true] = c_green;
keyclickedcolour[false] = c_maroon;
keyhoveredcolour = make_color_rgb(0,63,255);
keynextcolour = c_blue;

notes = 0;

#region Notes
c3 = 130.81;
d3b = 138.59;
d3 = 146.83;
e3b = 155.56;
e3 = 164.81;
f3 = 174.61;
g3b = 185;
g3 = 196;
a3b = 207.65;
a3 = 220;
b3b = 233.08;
b3 = 249.94;
c4 = 261.63;
d4b = 277.18;
d4 = 293.66;
e4b = 311.13;
e4 = 329.63;
f4 = 349.23;
g4b = 369.99;
g4 = 392;
a4b = 415.30;
a4 = 440;
b4b = 466.16;
b4 = 493.88;
c5 = 523.25;
d5b = 554.37;
d5 = 587.33;
e5b = 622.25;
e5 = 659.25;
f5 = 698.46;
g5b = 739.99;
g5 = 783.99;
a5b = 830.61;
a5 = 880.00;
b5b = 932.33;
b5 = 987.77;
#endregion

switch(global.song[test,question])
{
	case "Ode to Joy": default:
	{
		SongOdeToJoy();
		break;
	}
	case "Jingle Bells":
	{
		SongJingleBells();
		break;
	}
	case "Forest":
	{
		SongForest();
		break;
	}
	case "Desert":
	{
		SongDesert();
		break;
	}
	case "Merry Christmas":
	{
		SongMerryChristmas();
		break;
	}
	case "Deck the Halls":
	{
		SongDeckHalls();
		break;
	}
	case "Christmas Tree":
	{
		SongChristmasTree();
		break;
	}
	case "Title":
	{
		SongTitle();
		break;
	}
	case "End":
	{
		SongEnd();
		break;
	}
}


songspd = ((60/playspd)*4)*room_speed;
notenumber = 1;
note = noone;
oGlobalController.pause = true;