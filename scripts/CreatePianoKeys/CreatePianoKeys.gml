/// @desc CreatePianoKeys

switch(global.song[test,question])
{
	case "Ode to Joy": default:
	{
		key[question,1] = oPiano.g3;
		key[question,2] = oPiano.a3;
		key[question,3] = oPiano.b3;
		key[question,4] = oPiano.c4;
		key[question,5] = oPiano.d4;
		key[question,6] = oPiano.e4;
		key[question,7] = oPiano.f4;
		key[question,8] = oPiano.g4;
		break;
	}
	case "Jingle Bells":
	{
		key[question,1] = oPiano.c4;
		key[question,2] = oPiano.d4;
		key[question,3] = oPiano.e4;
		key[question,4] = oPiano.f4;
		key[question,5] = oPiano.g4;
	}
}

var amount = array_length_2d(key,question);
for(var i = 1; i < amount; i++)
{
	var currentkey = instance_create_depth(0,0,-1000,oPianoKeys);
	currentkey.note = key[question,i];
	currentkey.number = i;
	currentkey.amount = amount;
}