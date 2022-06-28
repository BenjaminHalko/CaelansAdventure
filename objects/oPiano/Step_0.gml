/// @desc
if(!instance_exists(oTestWrittenQuestion)) instance_destroy();

if(playing) and (alarm[1] <= 0) and (notenumber <= notes) 
{
	SetAlarm(0,5);
}

if(!playing)
{
	if(notenumber <= notes)
	{
		with(oPianoKeys)
		{
			if(note == other.notepitch[other.notenumber])
			{
				image_blend = other.keynextcolour;
			}
		}
	
		if(keyclicked != noone)
		correct = (keyclicked.note == notepitch[notenumber]);
	}
	
	

	if(clicked)
	{
		if(alarm[1] <= 0) and (correct)
		{
			note = audio_play_sound(snPianoSoundCorrect,1,true);
			audio_sound_pitch(note,keyclicked.note/440);

			alarm[1] = songspd/notelength[notenumber];
			keyclicked.stopclicking = true;
		}
	
		with(keyclicked)
		{
			image_blend = other.keyclickedcolour[other.correct];
		}
	}
}

if(audio_is_playing(note)) and (playing) and (notenumber <= notes)
{
	with(oPianoKeys)
	{
		if(note == other.notepitch[other.notenumber])
		{
			image_blend = other.keyclickedcolour[true];
		}
	}
}

if(notenumber > notes) and (oTest.alarm[1] <= 0)
{
	if(playing)
	{
		AnswerTest(true);
		instance_destroy();
		playing = true;
	}
	else
	{
		playing = true;
		SetAlarm(0,room_speed);
		notenumber = 1;
		keyclicked = noone;
	}
}