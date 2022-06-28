/// @desc

#region Music
if(oTransition.mode != TRANS_MODE.OFF) and (oTransition.target != rOptions) and (oTransition.target != rControls) and (oTransition.target != rPause) and (!unpersistant)
{
	if(oTransition.mode == TRANS_MODE.INTRO)
	{
		if(!audio_is_playing(music[room]))
		{
			audio_stop_sound(musicplaying);
			if(room == rCredits)
			musicplaying = audio_play_sound(music[room],1,false);
			else
			musicplaying = audio_play_sound(music[room],1,true);
			song = music[room];
			songplaying = music[room];
		}
		vol = min(1.2,vol+max(((1.2-vol)/oTransition.percentspd),0.005));
	}
	else
	{
		if(music[oTransition.target] != song)
		vol = max(0,vol-max((vol/oTransition.percentspd),0.005));
	}
}
else
{
	if(songplaying != song)
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
#endregion

#region
if(previousroom != rPause) and (room != rLevelSelect) and (room_persistent) and (oTransition.target != rPause) and (oTransition.mode == TRANS_MODE.INTRO)
{
	room_persistent = false;
	room_restart();
}
#endregion

#region Fullscreen
if(!window_get_fullscreen())
{
	window_set_fullscreen(true);
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