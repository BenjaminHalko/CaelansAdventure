/// @desc
var m = 128;
if(phase == 5)
previouschoice = 0;
if(phase == 6)
instance_create_layer(pos,previousy,"Walls",oBomb);
else
instance_create_layer(pos,irandom_range(m,room_height-m),"Walls",oBomb);
phasedelay[phase] = max(room_speed*5,phasedelay[phase]-room_speed*irandom_range(5,10));
if(showmessage)
{
	var text = instance_create_layer(oFlyingShip.x,oFlyingShip.ystart-64,layer,oText);
	text.text = "Hit the\nBomb";
	showmessage = false;
	audio_play_sound(vVaneesaAirshipNight,1,false);
}