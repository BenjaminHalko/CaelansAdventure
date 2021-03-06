/// @desc 
if(percent < 1)
{
	percent = min(1,percent+max(((1-percent)/10),0.005));
}
else if(selected)
{
	Inputs();
	if(key_back) SlideTransistion(TRANS_MODE.GOTO,rOptions);
	
	if(key_up_pressed)
	{
		if(pos == 0)
		{
			pos = array_length_1d(text)-1;
		}
		else
		{
			pos -= 1;
		}
	}

	if(key_down_pressed)
	{
		if(pos == array_length_1d(text)-1)
		{
			pos = 0;
		}
		else 
		{
			pos += 1;
		}
	}
	
	if(key_enter)
	{
		switch(pos)
		{
			case 0: default:
			{
				SlideTransistion(TRANS_MODE.GOTO,rOptions);
				break;
			}
			case 1:
			{
				oSliderMusic.selected_ = true;
				oSliderMusic.alarm[0] = 1;
				selected = false;
				break;
			}
			case 2:
			{
				oSliderSoundEffects.selected_ = true;
				oSliderSoundEffects.alarm[0] = 1;
				selected = false;
				break;
			}
			case 3:
			{
				oSliderVoiceClips.selected_ = true;
				oSliderVoiceClips.alarm[0] = 1;
				selected = false;
				break;
			}
			case 4:
			{
				global.retrovoice = !global.retrovoice;
				Save("Settings","Retro Voice",global.retrovoice);
				break;
			}
		}
	}
}