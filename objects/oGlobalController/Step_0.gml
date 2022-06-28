/// @desc

#region Music
if(global.credits)
{
	music[room] = mCredits;
}

if(oTransition.mode != TRANS_MODE.OFF) and (oTransition.target != rOptionsSound) and (oTransition.target != rOptionsDisplay) and (oTransition.target != rOptionsGameplay) and (oTransition.target != rOptions) and (oTransition.target != rControls) and (oTransition.target != rPause) and (oTransition.target != rCreditsOptions) and (oTransition.target != rUserSelect) and (!unpersistant) and (!audio_is_playing(mCredits)) and (previousroom != rPause) and (oTransition.mode != TRANS_MODE.RESTART) and (oTransition.mode != TRANS_MODE.QUIT)
{
	if(oTransition.mode == TRANS_MODE.INTRO) and (previousroom != rPause)
	{
		if(!audio_is_playing(music[room]))
		{
			audio_stop_sound(musicplaying);
			
			if(music[room] != noone)
			{
				if(room == rFinalBossEvilChrisFight) or (room == rFinalBossEvilRoomFight) or (music[room] == mCredits)
				musicplaying = audio_play_sound(music[room],10,false);
				else
				musicplaying = audio_play_sound(music[room],10,true);
				song = music[room];
				songplaying = music[room];
			}
		}
		vol = min(1.2,vol+max(((1.2-vol)/oTransition.percentspd),0.005));
	}
	else if(!instance_exists(oPause))
	{
		if(music[oTransition.target] != song)
		vol = max(0,vol-max((vol/oTransition.percentspd),0.005));
	}
}
else
{
	if(songplaying != song) or (oTransition.mode == TRANS_MODE.RESTART) or (oTransition.mode == TRANS_MODE.QUIT)
	{
		vol = max(0,vol-max((vol/oTransition.percentspd),0.005));
		if(vol <= 0.005)
		{
			audio_stop_sound(musicplaying);
			if(song != noone)
			{
				musicplaying = audio_play_sound(song,1,loop);
				songplaying = song;
			}
		}
	}
	else if(pause)
	{
		vol = max(0,vol-max((vol/oTransition.percentspd),0.005));
		if(vol <= 0.005)
		{
			audio_pause_sound(musicplaying);
		}
	}
	else if(vol != 1) and (song != noone)
	{
		if(audio_is_paused(musicplaying)) audio_resume_sound(musicplaying);
		vol = min(1.2,vol+max(((1.2-vol)/oTransition.percentspd),0.005));
	}
}

vol = median(0,vol,1);
audio_sound_gain(musicplaying,vol,0);

if(room == rFinalBossEvilChrisFight)
{
	if(!audio_is_playing(mEvilChrisBossIntro)) and (!audio_is_playing(mEvilChrisBoss))
	{
		musicplaying = audio_play_sound(mEvilChrisBoss,1,true);
		song = musicplaying;
		songplaying = musicplaying;
	}
}
#endregion

#region
if(previousroom != rPause) and (room != rLevelSelect) and (room_persistent) and (oTransition.target != rPause) and (oTransition.mode == TRANS_MODE.INTRO) and (room != rAirshipInside) and (room != rAirshipOutside) and (room != rAirshipNightInside) and (room != rAirshipNightOutside)
{
	room_persistent = false;
	room_restart();
}
#endregion

#region Fullscreen
if(!window_get_fullscreen()) and (!oTransition.quitmode)
{
	if(windowsize != window_get_width())
	{
		windowsize = window_get_width();
		Save("Settings","WindowSize",windowsize);
	}
	else if(windowsize/(1920/1080) != window_get_height()) and (windowsize != display_get_width())
	{
		windowsize = window_get_height()*(1920/1080);
		Save("Settings","WindowSize",windowsize);
	}
	window_set_size(windowsize,windowsize/(1920/1080));
	
	if(windowx != window_get_x()) or (windowy != window_get_y())
	{
		windowx = window_get_x();
		windowy = window_get_y();
		Save("Settings","WindowX",windowx);
		Save("Settings","WindowY",windowy);
	}
}
#endregion

#region Gamepad
Inputs();
if(!global.gamepadconnected)
{
	for(var i = 0; i < gamepad_get_device_count(); i++)
	{
		if(gamepad_is_connected(i))
		{
			global.gp = i;
			global.gamepadconnected = true;
			break;
		}
	}
	gamepad_set_axis_deadzone(global.gp,0.05);
}
else
{
	if(!gamepad_is_connected(global.gp))
	{
		global.gp = noone;
		global.gamepadconnected = false;
	}
}

global.switchedinput = false;
if((gamepad_key_up_pressed) or (gamepad_key_down_pressed) or (gamepad_key_left_pressed) or (gamepad_key_right_pressed) or (gamepad_key_enter) or (gamepad_key_back) or (gamepad_key_pause)) and (global.gamepadconnected)
{
	global.gamepad = true;
	global.switchedinput = true;
}
else if(keyboard_key_up_pressed) or (keyboard_key_down_pressed) or (keyboard_key_left_pressed) or (keyboard_key_right_pressed) or (keyboard_key_enter) or (keyboard_key_back) or (keyboard_key_pause) or (!global.gamepadconnected)
{
	global.gamepad = false;
	global.switchedinput = true;
}
#endregion

if(global.credits)
{
	SetAlarm(0,length);
}