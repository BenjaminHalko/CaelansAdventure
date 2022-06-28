/// @desc
if(!loaded)
{
	var camera = view_get_camera(0);
	
	var margin = 100;

	var x1 = camera_get_view_x(camera);
	var y1 = camera_get_view_y(camera);

	var w = camera_get_view_width(camera);
	var h = camera_get_view_height(camera);

	var x2 = x1 + w;
	var y2 = y1 + h;

	if(x >= x1-margin) and (x <= x2+margin) and (y >= y1-margin) and (y <= y2+margin)
	{
		loaded = true;
	}
}

vsp += grv;
#region Vertical Collision
if(place_meeting(x,y+vsp,oWall)) or (place_meeting(x,y+vsp,oLockedDoorWall)) or (place_meeting(x,y+vsp,oCrate)) or (place_meeting(x,y+vsp,oOn)) or ((place_meeting(x,y+vsp,oOff)) and !loaded)
{
	//while!((place_meeting(x,y+sign(vsp),pCollide)) or (place_meeting(x,y+sign(vsp),oWater) and (!instance_place(x,y+vsp,oWater))))
	//y += sign(vsp);
	vsp = 0;
}
#endregion
y += vsp;