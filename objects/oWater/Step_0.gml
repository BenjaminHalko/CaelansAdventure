/// @desc
if(!surface_exists(water_surface)) and (!instance_exists(oTest)) {
    water_surface = surface_create( 81 * ratio, 81 * ratio );
}

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

if(place_meeting(x,y,oPlayer)) and (!top)
{
	oPlayer.allowstandinginwater = false;
	oPlayer.automove = false;
}

if(place_meeting(x,oPlayer.y,oPlayer)) and (top) and (instance_place(x,bbox_bottom+1,oWater) != noone) and (oPlayer.swimming) and (!collision_line(x,y,oPlayer.x,oPlayer.y,pCollide,true,true))
{
	oPlayer.vsp = Approch(oPlayer.vsp,median(-7,(Wave(y-5,y+5,2,0)+8)-oPlayer.y,7),1);
}
vsp += grv;
#region Vertical Collision
if(place_meeting(x,y+vsp,oWallGrass)) or (place_meeting(x,y+vsp,oLockedDoorWall)) or (place_meeting(x,y+vsp,oWater)) or (place_meeting(x,y+vsp,oOn)) or (place_meeting(x,y+vsp,oTestDoor)) or ((place_meeting(x,y+vsp,oOff)) and !loaded)
{
	//while(!place_meeting(x,y+sign(vsp),pCollide))
	//y += sign(vsp);
	vsp = 0;
}
#endregion
y += floor(vsp);

if(top)
image_index = (current_time/1000)*sprite_get_speed(sprite_index);