/// @desc
if(global.credits)
{
	instance_destroy();
}
else
{
event_inherited();
phase = 0;
destroy = false;
explosionsmax = 10;
explosions = 0;
explosionspd = 15;
screenindex = 0;

mask = instance_create_layer(x,y,layer,oTestDoorTrigger);
mask.creator = id;

lock = instance_create_depth(x,y,oPlayer.depth+1,oTestDoorLock);
lock.image_xscale = image_xscale;
lock.y -= 120;
lock.creator = id;

back = instance_create_depth(x,y,oPlayer.depth+3,oTestDoorBack);
back.image_xscale = image_xscale;
mask.image_xscale = image_xscale;
glowback = instance_create_depth(x,y,oPlayer.depth+2,oTestDoorGlow);
glowback.front = false;
glowfront = instance_create_depth(x,y,-1000,oTestDoorGlow);
glowback.image_xscale = image_xscale;
glowfront.image_xscale = image_xscale;
if(room == rHauntedHouse)
{
	//glow = instance_create_layer(x,y+150,"LightRenderer",oLightTest);
}
if(!layer_exists("explosions"))
{
	layer_create(-10000,"explosions");
}

image_index = 0;
image_speed = 0;
}

doordelay = room_speed/2+room_speed/4-room_speed/8;

if(test == 2) and (global.forWebsite) instance_destroy();