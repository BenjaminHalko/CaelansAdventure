repeat(4)
{
	instance_create_layer(96+(64*irandom(11)),-100,"Weapons",oLaserFireController);
}

stopattack = true;
alarm[4] = room_speed*3;