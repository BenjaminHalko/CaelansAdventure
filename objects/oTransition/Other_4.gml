/// @desc
if(instance_exists(oPlayer)) and flash
{
	xx = oPlayer.x;
	yy = oPlayer.y-50;
	iconx += oCamera.x-cameraxprevious;
	icony += oCamera.y-camerayprevious;
	iconxstart = iconx;
	iconystart = icony;
}