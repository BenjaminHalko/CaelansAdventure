/// @desc
text[4] = "Retro\nVoice"
text[3] = "Voice\nVolume";
text[2] = "SFX\nVolume";
text[1] = "Music\nVolume";
text[0] = "Back";
pos = 0;
margin = 82.29;
percent = 0;
for(var i=0; i<=array_length_1d(text)-1;i++)
{
	fontsize[i] = 0.64;
}
selected = true;

instance_create_layer(x+512,y+margin,layer,oSliderMusic);
instance_create_layer(x+512,y+(margin*2),layer,oSliderSoundEffects);
instance_create_layer(x+512,y+(margin*3),layer,oSliderVoiceClips);