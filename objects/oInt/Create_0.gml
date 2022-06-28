/// @desc
InitalizeTestVariables();
LoadVoiceVariables();
instance_create_layer(0,0,layer,oGlobalController);
instance_create_layer(0,0,layer,oTransition);
instance_create_layer(0,0,layer,oMouse);
randomize();

global.retrofilter = Load("Settings","Retro Filter",false);
global.retrovoice = Load("Settings","Retro Voice",false);

global.gp = 0;
global.gamepadconnected = false;
for(var i = 0; i < gamepad_get_device_count(); i++)
{
	if(gamepad_is_connected(i))
	{
		global.gp = i;
		global.gamepadconnected = true;
		break;
	}
}

if(audio_group_is_loaded(agSoundEffects)) and (audio_group_is_loaded(agMusic))
{
	audio_group_set_gain(agMusic,0.5*Load("Settings","Music Volume",0.5),1);
	audio_group_set_gain(agSoundEffects,Load("Settings","Sound Effects Volume",0.5),1);
	audio_group_set_gain(agVoiceClips,Load("Settings","Voice Clips Volume",0.75),1);
	room_goto_next();
}
else
{
	audio_group_load(agSoundEffects);
	audio_group_load(agMusic);
	audio_group_load(agVoiceClips);
}

window_set_fullscreen(Load("Settings","Fullscreen",true))