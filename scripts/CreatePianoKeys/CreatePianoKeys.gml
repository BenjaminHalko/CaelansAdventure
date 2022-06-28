/// @desc CreatePianoKeys
key[0,0] = oPiano.c3;
key[0,1] = oPiano.d3b;
key[0,2] = oPiano.d3;
key[0,3] = oPiano.e3b;
key[0,4] = oPiano.e3;
key[0,5] = oPiano.f3;
key[0,6] = oPiano.g3b;
key[0,7] = oPiano.g3;
key[0,8] = oPiano.a3b;
key[0,9] = oPiano.a3;
key[0,10] = oPiano.b3b;
key[0,11] = oPiano.b3;
key[1,0] = oPiano.c4;
key[1,1] = oPiano.d4b;
key[1,2] = oPiano.d4;
key[1,3] = oPiano.e4b;
key[1,4] = oPiano.e4;
key[1,5] = oPiano.f4;
key[1,6] = oPiano.g4b;
key[1,7] = oPiano.g4;
key[1,8] = oPiano.a4b;
key[1,9] = oPiano.a4;
key[1,10] = oPiano.b4b;
key[1,11] = oPiano.b4;
key[2,0] = oPiano.c5;
key[2,1] = oPiano.d5b;
key[2,2] = oPiano.d5;
key[2,3] = oPiano.e5b;
key[2,4] = oPiano.e5;
key[2,5] = oPiano.f5;
key[2,6] = oPiano.g5b;
key[2,7] = oPiano.g5;
key[2,8] = oPiano.a5b;
key[2,9] = oPiano.a5;
key[2,10] = oPiano.b5b;
key[2,11] = oPiano.b5;
		
for(var j = 0; j < 3; j++)
{
	for(var i = 0; i < 12; i++)
	{
		var currentkey = instance_create_depth(0,0,-1000,oPianoKeys);
		currentkey.note = key[j,i];
		currentkey.number = i;
		currentkey.row = j;
		currentkey.alarm[0] = (i+j)*room_speed/16+1;
	}
}