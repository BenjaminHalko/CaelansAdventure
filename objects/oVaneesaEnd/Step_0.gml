/// @desc

// Inherit the parent event
if(active) and (!starting) and (textobject == noone)
{
	textobject = instance_create_depth(x,bbox_top-16,-10000,oText);
			
	with(textobject)
	{
		text = string_replace(other.text[other.pos],"Caelan",global.name[global.character]);
		text = string_replace(text,"Space Bar",ChooseDependingOnInput("Space Bar","A Button"));
		text = string_replace(text,"Press Enter",ChooseDependingOnInput("Press Enter","Press the A Button"));
		length = string_length(text);
	}
				
	if(talknumber != 0) and (!global.retrovoice)
	{
		audio_stop_sound(talksound);
		talksound = audio_play_sound(global.TalkVoice[talknumber,1],1,false);
	}
}

if(!active)
{
	if(starting)
	{
		x = Approch(x,xstart,oPlayer.walksp);
		if(x == xstart)
		{
			SetAlarm(0,room_speed/4);
			sprite_index = sVaneesa;
		}
		else
		{
			sprite_index = sVaneesaRun;
			image_speed = 1;
		}
	}
}

if(sign(oPlayer.x - x) != 0)
image_xscale = sign(oPlayer.x - x);