/// @desc
global.forWebsite = true;
firststart = false;
char = 0;
text = "Press Any Key";
textToDraw = "";
global.annaramode = Load("Settings","User",false);
display_set_gui_size(1920,1080);
InitalizeTestVariables();
LoadVoiceVariables();
instance_create_layer(0,0,layer,oGlobalController);
instance_create_layer(0,0,layer,oTransition);
instance_create_layer(0,0,layer,oMouse);
randomize();

global.credits = false;
global.completed = Load("Info","Completed",false);
global.iconnumber = Load("Info","Icon Number",0);
global.infintejump = Load("Settings","InfiniteJump",true);
global.numberofextras = sprite_get_number(sExtras);
global.airshipdoor = noone;
global.unlockedinfintejump = Load("Settings","UnlockedInfinteJump",false);
global.retrofilter = Load("Settings","Retro Filter",false);
global.retrovoice = Load("Settings","Retro Voice",false);

global.screenKeyActive[OnScreenKeys.LEFT] = false;
global.screenKeyActive[OnScreenKeys.RIGHT] = false;
global.screenKeyActive[OnScreenKeys.UP] = false;
global.screenKeyActive[OnScreenKeys.DOWN] = false;
global.screenKeyActivePressed[OnScreenKeys.LEFT] = false;
global.screenKeyActivePressed[OnScreenKeys.RIGHT] = false;
global.screenKeyActivePressed[OnScreenKeys.UP] = false;
global.screenKeyActivePressed[OnScreenKeys.DOWN] = false;
global.screenKeyActive[OnScreenKeys.A] = false;
global.screenKeyActive[OnScreenKeys.B] = false;

global.gp = 0;
global.gamepadconnected = false;
for(var i = 0; i < gamepad_get_device_count(); i++)
{
	if(gamepad_is_connected(i))
	{
		global.gp = i;
		global.gamepadconnected = true;
		gamepad_set_axis_deadzone(global.gp,0.05);
		break;
	}
}
global.unlockedallextras = true;

for(var i = 1; i <= global.numberofextras; i++)
{
	if(!Load("Extras","Watched - "+string(i),false))
	{
		global.unlockedallextras = false;
		break;
	}
}

if(audio_group_is_loaded(agSoundEffects)) and (audio_group_is_loaded(agMusic)) and (audio_group_is_loaded(agVoiceClips))
{
	audio_group_set_gain(agMusic,0.5*Load("Settings","Music Volume",0.5),10);
	audio_group_set_gain(agSoundEffects,Load("Settings","Sound Effects Volume",0.5),10);
	audio_group_set_gain(agVoiceClips,Load("Settings","Voice Clips Volume",0.5),10);
	if(Load("Info","Room",noone) == noone)
	{
		firststart = true;
		oTransition.percent = 0;
	}
	else
	room_goto_next();
}
else
{
	audio_group_load(agSoundEffects);
	audio_group_load(agMusic);
	audio_group_load(agVoiceClips);
}

window_set_fullscreen(Load("Settings","Fullscreen",true))