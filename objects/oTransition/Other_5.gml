/// @desc
if(flash)
{
	if(instance_exists(oCamera))
	{
		cameraxprevious = oCamera.x-oCamera.view_w_half;
		camerayprevious = oCamera.y-oCamera.view_h_half;
	}
	else
	{
		cameraxprevious = 0;
		camerayprevious = 0;
	}
}