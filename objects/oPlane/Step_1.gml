/// @desc
Inputs();
if(((key_exitplane) and (room != rAirshipBoss)) or (place_meeting(x,y,oJumpOffPlane))) and (activated) 
{
	activated = false;
	alarm[1] = 1;
}