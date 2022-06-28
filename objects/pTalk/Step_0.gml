/// @desc
if(!ending) and (!starting)
{
	if(active)
	{
		Inputs();
		if(textobject == noone) or (key_enter)
		{
			if(pos < array_length_1d(text))
			{
				with(textobject)
				{
					instance_destroy();
				}
			
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
					if(talknumber == 1) and (pos == 0)
					talksound = audio_play_sound(ChooseDependingOnInput(global.TalkVoiceK[talknumber,pos],global.TalkVoiceG[talknumber,pos]),1,false);
					else
					talksound = audio_play_sound(global.TalkVoice[talknumber,pos],1,false);
				}
				
				if(pos != 0) and (talknumber != 0)
				{
					sprite_index = sprite[pos];
					image_index = 0;
					image_speed = 1;
				}
				pos++;
			}
			else
			{
				with(textobject)
				{
					instance_destroy();
				}
			
				ending = true;
			}
		}
	}
	else
	{
		if(point_in_circle(oPlayer.x,oPlayer.y,x,y,256))
		{
			oPlayer.hascontrol = false;
			starting = true;
			active = true;
		}
	}
}
image_xscale = sign(oPlayer.x - x);