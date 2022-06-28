/// @desc
note = audio_play_sound(snPianoSoundCorrect,1,true);
audio_sound_pitch(note,notepitch[notenumber]/440);
var length = songspd/notelength[notenumber];
alarm[1] = max(length,5);