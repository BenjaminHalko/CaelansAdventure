/// @desc

event_inherited();
image_xscale = -1;

#region Airship Code
if(start)
{
if(!destroy)
{
	if(!instance_exists(oBossHealthBar)) instance_create_layer(0,0,layer,oBossHealthBar);
pos = camera_get_view_x(view_camera[0])+oCamera.view_w_half/2+96;
if(alarm[0] <= 0)
{
	switch(phase)
	{
		case 0:
		{
			var top = 90;
			var middle = 270;
			var bottom = 450;
			var choice = irandom(2);
			while(choice == previouschoice)
			{
				choice = irandom(2);
			}
			previouschoice = choice;
			switch(choice)
			{
				case 0:
				{
					var crate = instance_create_layer(pos,top+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					var crate = instance_create_layer(pos,middle+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					break;
				}
				case 1:
				{
					var crate = instance_create_layer(pos,middle+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					var crate = instance_create_layer(pos,bottom+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					break;
				}
				case 2:
				{
					var crate = instance_create_layer(pos,top+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					var crate = instance_create_layer(pos,bottom+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					break;
				}
			}
			break;
		}
		case 1:
		{
			var top = 90;
			var middle = 270;
			var bottom = 450;
			var choice = irandom(2);
			while(choice == previouschoice)
			{
				choice = irandom(2);
			}
			previouschoice = choice;
			switch(choice)
			{
				case 0:
				{
					var crate = instance_create_layer(pos,top+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					var crate = instance_create_layer(pos,middle+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					break;
				}
				case 1:
				{
					var crate = instance_create_layer(pos,middle+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					var crate = instance_create_layer(pos,bottom+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					break;
				}
				case 2:
				{
					var crate = instance_create_layer(pos,top+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					var crate = instance_create_layer(pos,bottom+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					break;
				}
			}
			break;
		}
		case 2:
		{
			var top = 90;
			var middle = 270;
			var bottom = 450;
			var choice = irandom(2);
			while(choice == previouschoice)
			{
				choice = irandom(2);
			}
			previouschoice = choice;
			switch(choice)
			{
				case 0:
				{
					var crate = instance_create_layer(pos,top+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					break;
				}
				case 1:
				{
					var crate = instance_create_layer(pos,middle+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					break;
				}
				case 2:
				{
					var crate = instance_create_layer(pos,bottom+32,"Crates",oFlyingCrate);
					crate.scale = 5.625;
					break;
				}
			}
			break;
		}
		case 3:
		{
			var crate = instance_create_layer(pos,room_height/2,"Crates",oFlyingCrate);
			crate.scale = 7;
			break;
		}
		case 4:
		{
			var crate = instance_create_layer(pos,room_height/2,"Crates",oFlyingCrate);
			crate.scale = 7;
			break;
		}
		case 5:
		{
			var changemargin = 64;
			var location = irandom_range(margin+32,room_height-margin-32);
			while(median(previouslocation-changemargin,location,previouslocation+changemargin) == location)
			{
				var location = irandom_range(margin,room_height-margin)
			}
			previouslocation = location;
			var crate = instance_create_layer(pos,location,"Crates",oFlyingCrate);
			crate.scale = 3;
			break;
		}
		case 6:
		{
			if(phase6intro)
			{
				var crate = instance_create_layer(pos,previousy+128+(96*yyy)+32,"Crates",oFlyingCrate);
				crate.scale = 3;
				var crate = instance_create_layer(pos,previousy-128-(96*yyy)+32,"Crates",oFlyingCrate);
				crate.scale = 3;
				if(yyy <= 0) phase6intro = false;
				yyy-=1;
			}
			else
			{
				var choice = choose(-1,1);
				choice = median(-1,previouschoice+choice,1);
				var prey = median(margin+128,previousy+(64*choice),room_height-margin-128);
				while(prey != previousy+(64*choice))
				{
					var choice = choose(-1,1);
					choice = median(-1,previouschoice+choice,1);
					var prey = median(margin+128,previousy+(64*choice),room_height-margin-128);
				}
				previouschoice = choice;
				previousy = prey;
				var crate = instance_create_layer(pos,previousy-128,"Crates",oFlyingCrate);
				crate.scale = 3;
				var crate = instance_create_layer(pos,previousy+128,"Crates",oFlyingCrate);
				crate.scale = 3;
			}
			break;
		}
		case 7:
		{
			destroy = true;
			break;
		}
	}
	alarm[0] = cratedelay[phase];
}
SetAlarm(1,phasedelay[phase]);
y = Wave(ystart-floatmargin,ystart+floatmargin,3,0);
if(phase >= 5) and (global.user != USER.ANNARA)
{
	PlaySong(mBossHurry,true);
	image_blend = make_color_hsv(0,Wave(0,255,2,0),255);
}
}
else
{
	if(alarm[2] <= 0)
	{
		alarm[2] = explosionspd;
	}
}
}
#endregion

#region Talking Code
if(ending) and (!start)
{
	start = true;
	oPlane.hascontrol = true;
}
#endregion