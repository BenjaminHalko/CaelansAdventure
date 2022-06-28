if(point_in_circle(oPlayer.x,oPlayer.y,x,y,64)) and (!instance_exists(oText))
{
	with(instance_create_depth(x,bbox_top-16,-10000,oText))
	{
		text = string_replace(other.text,"Caelan",global.name[global.character]);
		text = string_replace(text,"Space Bar",ChooseDependingOnInput("Space Bar","A Button"));
		text = string_replace(text,"Press Enter",ChooseDependingOnInput("Press Enter","Press the A Button"));
		length = string_length(text);
		creator = other.id;
	}
	
	with(oCamera)
	{
		follow = other.id;
	}
	
	if(number != 0)
	{
		if(character)
		{
			var clip = ChooseDependingOnCharacter(global.signVoicesC[roomnumber,number],global.signVoicesA[roomnumber,number],noone,noone);
		}
		else if(input)
		{
			if(global.gamepad)
			{
				var clip = global.signVoicesG[roomnumber,number];
			}
			else
			{
				var clip = global.signVoicesK[roomnumber,number];
			}
	
		}
		else
		{
			var clip = global.signVoices[roomnumber,number];
		}
		
		audio_play_sound(clip,1,false);
	}
}