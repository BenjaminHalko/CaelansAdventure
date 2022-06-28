/// @desc
if(audio_group_is_loaded(agMusic)) and (audio_group_is_loaded(agSoundEffects)) and (audio_group_is_loaded(agVoiceClips))
{
	audio_group_set_gain(agMusic,0.75*Load("Settings","Music Volume",0.5),1);
	audio_group_set_gain(agSoundEffects,Load("Settings","Sound Effects Volume",0.5),1);
	audio_group_set_gain(agVoiceClips,Load("Settings","Voice Clips Volume",0.5),1);
	room_goto_next();
}