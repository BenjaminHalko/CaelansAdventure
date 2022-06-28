/// @desc
switch(phase)
{
	case 0:
	{
		y = Approch(y,256,yspd);
		saw.x = x+lengthdir_x(100,sawrotation);
		saw.y = y+lengthdir_y(100,sawrotation);
		sawrotation -= sawrotationspd;
		if(y == 256) phase = 1;
		break;
	}
	case 1:
	{
		if(!instance_exists(oBossHealthBar)) instance_create_layer(0,0,layer,oBossHealthBar);
		sawrotation = Approch(sawrotation,90,sawrotationspd);
		saw.x = x+lengthdir_x(100,sawrotation);
		saw.y = y+lengthdir_y(100,sawrotation);
		if(sawrotation == 90) phase = 2;
		break;
	}
	case 2:
	{
		var s = 0.25;
		saw.y = Approch(saw.y,y+130,sawvspd);
		sawvspd += sawspd;
		
		if(saw.y >= y+45)
		{
			if(sawt == noone)
			{
				sawt = instance_create_depth(x,y,depth+2,oSaws);
				sawt.image_xscale = s;
				sawt.image_yscale = s;
			}
			sawt.x = x+lengthdir_x(45,270+angle);
			sawt.y = y+lengthdir_y(45,270+angle);
		}
		
		if(saw.y >= y+70) and (sawm == noone)
		{
			if(sawm == noone)
			{
				sawm = instance_create_depth(x,y,depth+2,oSaws);
				sawm.image_xscale = s;
				sawm.image_yscale = s;
			}
			sawm.x = x+lengthdir_x(70,270+(angle*1.1));
			sawm.y = y+lengthdir_y(70,270+(angle*1.1));
		}
		
		if(saw.y == y+130)
		{
			SetAlarm(0,room_speed);
		}
		break;
	}
	case 3:
	{
		angle = Approch(angle,Wave(-60,60,5,0),3);
		x = Approch(x,Wave(256,room_width-256,20,0),1);
		sawt.x = x+lengthdir_x(45,270+angle);
		sawt.y = y+lengthdir_y(45,270+angle);

		sawm.x = x+lengthdir_x(70,270+(angle*1.1));
		sawm.y = y+lengthdir_y(70,270+(angle*1.1));

		saw.x = x+lengthdir_x(130,270+(angle*1.2));
		saw.y = y+lengthdir_y(130,270+(angle*1.2));
		
		hit = false;
		
		with(oPlayer)
		{
			if(place_meeting(x+hsp,y+vsp,oBossUnderground))
			{
				other.hit = true;
				x += 4*sign(x-other.x);
				y += 3*sign(y-other.y);
			}
		}
		
		if(hit) and (allowhit)
		{
			allowhit = false;
			SetAlarm(1,room_speed/4);
			hp -= 1;
			if(hp <= 3)
			{
				if(global.annaramode)
				phase = 5;
				else
				phase = 4;
			}
		}
		break;
	}
	case 4:
	{
		image_speed = 2;
		with(pSpring)
		{
			y = Approch(y,ystart-32,1);
		}
		PlaySong(mBossHurry,true);
		image_blend = make_color_hsv(0,Wave(0,255,5,0),255);
		angle -= 2;
		x = Approch(x,Wave(475,room_width-475,4,0),5);

		saw.x = x+lengthdir_x(130,270+(angle*1.3));
		saw.y = y+lengthdir_y(130,270+(angle*1.3));
		
		hit = false;
		with(oPlayer)
		{
			if(place_meeting(x+hsp*2,y+vsp*2,oBossUnderground))
			{
				other.hit = true;
				hsp = 4*sign(x-other.x);
				vsp = 3*sign(y-other.y);
			}
		}
		
		if(hit) and (allowhit)
		{
			hp -= 1;
			allowhit = false;
			SetAlarm(1,room_speed/3);
			if(hp <= 0)
			{
				phase = 5;
				oPlayer.hascontrol = false;
			}
		}
		break;
	}
	case 5:
	{
		instance_activate_object(oSignPost);
		with(oSignPost)
		{
			y = Approch(y,ystart,1);
		}
		with(pSpring)
		{
			y = Approch(y,ystart,1);
		}
		SetAlarm(2,5);
		break;
	}
}