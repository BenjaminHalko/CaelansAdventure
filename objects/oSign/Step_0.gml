if(point_in_circle(oPlayer.x,oPlayer.y,x,y,64)) and (!instance_exists(oText)) and (room != rFinalBossHouse)
{
	if(infintejumpactivator)
	{
		Save("Settings","UnlockedInfinteJump",true);
		global.unlockedinfintejump = true;
	}
	
	with(instance_create_depth(x,bbox_top-16,-10000,oText))
	{
		text = string_replace(other.text,"Caelan",global.name[global.character]);
		text = string_replace(text,"Chris's","Chris'");
		text = string_replace(text,"Space Bar",ChooseDependingOnInput("Space Bar","A Button"));
		text = string_replace(text,"Press Enter",ChooseDependingOnInput("Press Enter","Press the A Button"));
		length = string_length(text);
		creator = other.id;
	}
	
	if(!global.credits)
	{
		with(oCamera)
		{
			follow = other.id;
		}
	}
	
	if(number != 0) and (!global.retrovoice) and (!global.credits)
	{
		if(character)
		{
			var clip = ChooseDependingOnCharacter(global.signVoicesC[roomnumber,number],global.signVoicesA[roomnumber,number],global.signVoicesB[roomnumber,number],global.signVoicesE[roomnumber,number]);
		}
		else if(input)
		{
			var clip = ChooseDependingOnInput(global.signVoicesK[roomnumber,number],global.signVoicesG[roomnumber,number])
		}
		else
		{
			var clip = global.signVoices[roomnumber,number];
		}
		
		audio_play_sound(clip,1,false);
	}
}