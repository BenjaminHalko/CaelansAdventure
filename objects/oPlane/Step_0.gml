/// @desc
if(!activated)
{
	if(activator.activated)
	{
		oPlayer.hascontrol = false;
		activated = true;
	}
	vsp += grv;
	image_speed = Approch(image_speed,0,turnonspd);
}
else
{
	#region Move
	Inputs();
	if(room == rAirshipBoss)
	{
		if(instance_exists(oFlyingShip))
		{
			hsp = sign((room_width-oCamera.view_w_half/2)-x)*Approch(0,point_distance(x,0,room_width-oCamera.view_w_half/2,0),movespd);
		}
		else
		{
			hsp = -movespd;
		}
	}
	else if(hascontrol)
	hsp = (key_right - key_left) * movespd;
	else
	hsp = 0;
	
	if(hascontrol)
	vsp = (key_down - key_up) * movespd;
	else
	vsp = 0;
	#endregion
	
	if(hsp != 0) and (room != rAirshipBoss)
	{
		if(sign(hsp) != image_xscale)
		{
			image_xscale = sign(hsp);
			if(place_meeting(x,y,oWall)) or (place_meeting(x,y,oWallGrass)) or (place_meeting(x,y,oLockedDoor)) or (place_meeting(x,y,oLockedDoorWall)) or (place_meeting(x,y,oWall)) or (place_meeting(x,y,oPlaneWall)) or (place_meeting(x,y,oCrate))
			{
				image_xscale = -sign(hsp);
			}
			else
			{
				with(oPlayer)
				{
					if(place_meeting(x,y,oWall)) or (place_meeting(x,y,oWallGrass)) or (place_meeting(x,y,oLockedDoor)) or (place_meeting(x,y,oLockedDoorWall)) or (place_meeting(x,y,oWall)) or (place_meeting(x,y,oPlaneWall)) or (place_meeting(x,y,oCrate))
					{
						other.image_xscale = -sign(other.hsp);
					}
				}
			}
		}
	}
	if(oPlayer.image_xscale != image_xscale)
	{
		var dis = x - oPlayer.x;
		oPlayer.x += dis;
		oPlayer.image_xscale = image_xscale;
	}
	
	#region Cloud Bounce
	if(place_meeting(x+hsp,y+vsp,oCloud))
	{
		hbsp = -sign(hsp)*bouncespd;
		vbsp = -sign(vsp)*bouncespd;
	}
	
	hbsp = Approch(hbsp,0,bouncedecay);
	vbsp = Approch(vbsp,0,bouncedecay);
	
	hsp += hbsp;
	vsp += vbsp;
	#endregion
	
	#region Horizontal Collision
	if (place_meeting(x+hsp,y-incline,oWall)) or (place_meeting(x+hsp,y-incline,oCloud)) or (place_meeting(x+hsp,y-incline,oOn)) or (place_meeting(x+hsp,y-incline,oLockedDoorWall)) or (place_meeting(x+hsp,y-incline,oLockedDoor)) or (place_meeting(x+hsp,y-incline,oFlyingCrate)) or place_meeting(x+hsp,y-incline,oCrate) or ((place_meeting(x+hsp,y-incline,oWallGrass) or place_meeting(x+hsp,y-incline,oPlaneWall)) and activated)
	{
		hsp = 0;
	}
	with(oPlayer)
	{
		if (place_meeting(x+other.hsp,y-other.incline,oWall)) or place_meeting(x+other.hsp,y-other.incline,oCrate) or (place_meeting(x+other.hsp,y-other.incline,oCloud)) or (place_meeting(x+other.hsp,y-other.incline,oOn)) or (place_meeting(x+other.hsp,y-other.incline,oLockedDoorWall)) or (place_meeting(x+other.hsp,y-other.incline,oLockedDoor)) or (place_meeting(x+other.hsp,y-other.incline,oFlyingCrate)) or ((place_meeting(x+other.hsp,y-other.incline,oWallGrass) or place_meeting(x+other.hsp,y-other.incline,oPlaneWall)) and other.activated)
		{
			other.hsp = 0;
		}
	}
	x += hsp;
	oPlayer.x += hsp;
	#endregion
	
	image_speed = Approch(image_speed,3,turnonspd);
	with(oPlayer)
	{
		if (place_meeting(x,y+other.vsp,oWall)) or (place_meeting(x,y+other.vsp,oLockedDoorWall)) or (place_meeting(x,y+other.vsp,oOn)) or (place_meeting(x,y+other.vsp,oLockedDoor)) or (place_meeting(x,y+other.vsp,oFlyingCrate)) or place_meeting(x,y+other.vsp,oCrate) or ((place_meeting(x,y+other.vsp,oWallGrass) or place_meeting(x,y+other.vsp,oPlaneWall)) and other.activated)
		{
			other.vsp = 0;
		}
	}
}

#region Vertical Collision
if (place_meeting(x,y+vsp,oWall)) or (place_meeting(x,y+vsp,oLockedDoorWall)) or (place_meeting(x,y+vsp,oOn)) or (place_meeting(x,y+vsp,oLockedDoor)) or (place_meeting(x,y+vsp,oFlyingCrate)) or place_meeting(x,y+vsp,oCrate) or ((place_meeting(x,y+vsp,oWallGrass) or place_meeting(x,y+vsp,oPlaneWall)) and activated)
{
	vsp = 0;
}
y += vsp;
#endregion

if(activated)
{
	oPlayer.y += vsp
}

while(place_meeting(x,y,oWall))
{
	y += 1;
	oPlayer.y += 1;
}

with(oPlayer)
{
	while(place_meeting(x,y,oWall))
	{
		y += 1;
		other.y += 1;
	}
}