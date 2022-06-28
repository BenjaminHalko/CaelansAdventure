/// @desc
margin = 5;
mode = 0;
yy = y;
keynumber = 0;
target = noone;
light = noone;
if(room == rHauntedHouse) or (room == rHauntedHouseNight) or (room == rFinalBossHauntedHouse) or (room == rSecret)
{
	light = instance_create_layer(x,y,"LightRenderer",oLightKey);
	light.creator = id;
}
ini_close();