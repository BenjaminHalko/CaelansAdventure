function EvilChrisWaveAttack() {
	var extratime = room_speed;
	var yy = 600;
	switch(irandom(3))
	{
		case 0:
		{
			for(var i = 0; i < 12; i++)
			{
				var spikes = instance_create_layer(107+(64*i),yy,"Weapons",oSpikes);
				spikes.alarm[0] = (i*room_speed/5)+extratime;
				spikes.alarm[2] = (i*room_speed/10)+1;
			}
			break;
		}
		case 1:
		{
			for(var i = 0; i < 12; i++)
			{
				var spikes = instance_create_layer(107+(64*i),yy,"Weapons",oSpikes);
				spikes.alarm[0] = ((11-i)*room_speed/5)+extratime;
				spikes.alarm[2] = ((11-i)*room_speed/10)+1;
				spikes.clockwise = false;
			}
			break;
		}
		case 2:
		{
			for(var i = 0; i < 6; i++)
			{
				var spikes = instance_create_layer(496+(64*i),yy,"Weapons",oSpikes);
				spikes.alarm[0] = (i*room_speed/5)+extratime;
				spikes.alarm[2] = (i*room_speed/10)+1;
				var spikes = instance_create_layer(432-(64*i),yy,"Weapons",oSpikes);
				spikes.alarm[0] = (i*room_speed/5)+extratime;
				spikes.alarm[2] = (i*room_speed/10)+1;
				spikes.clockwise = false;
			}
			break;
		}
		case 3:
		{
			for(var i = 0; i < 6; i++)
			{
				var spikes = instance_create_layer(496+(64*i),yy,"Weapons",oSpikes);
				spikes.alarm[0] = ((5-i)*room_speed/5)+extratime;
				spikes.alarm[2] = ((5-i)*room_speed/10)+1;
				spikes.clockwise = false;
				var spikes = instance_create_layer(432-(64*i),yy,"Weapons",oSpikes);
				spikes.alarm[0] = ((5-i)*room_speed/5)+extratime;
				spikes.alarm[2] = ((5-i)*room_speed/10)+1;
			}
			break;
		}
	}

	stopattack = true;
	alarm[4] = room_speed*3;


}
