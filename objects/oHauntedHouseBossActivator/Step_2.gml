/// @desc

// Inherit the parent event
event_inherited();

if(mode == 2)
{
	oHauntedHouseBoss.activated = true;
	PlaySong(noone,false);
	oCamera.follow = oCameraCenter.id;
	oCamera.yoffset = -64;
	oPlayer.hascontrol = false;
	instance_change(oKey,false);
}