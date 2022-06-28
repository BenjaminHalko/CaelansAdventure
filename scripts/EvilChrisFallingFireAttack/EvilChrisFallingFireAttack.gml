function EvilChrisFallingFireAttack() {
	repeat(20)
	{
		instance_create_layer(irandom_range(96,room_width-96),-100,"Weapons",oFallingFire)	
	}

	stopattack = true;
	alarm[4] = room_speed*5;


}
