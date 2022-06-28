/// @desc
event_inherited();
phase = 0;
destroy = false;
explosionsmax = 10;
explosions = 0;
explosionspd = 15;

var mask = instance_create_layer(x,y,layer,oTestDoorTrigger);
mask.creator = id;

back = instance_create_depth(x,y,oPlayer.depth+2,oTestDoorBack);
back.image_xscale = image_xscale;
mask.image_xscale = image_xscale;
glowback = instance_create_depth(x,y,oPlayer.depth+1,oTestDoorGlow);
glowback.front = false;
glowfront = instance_create_depth(x,y,-1000,oTestDoorGlow);
glowback.image_xscale = image_xscale;
glowfront.image_xscale = image_xscale;

if(!layer_exists("explosions"))
{
	layer_create(-100,"explosions");
}

image_index = 0;
image_speed = 0;