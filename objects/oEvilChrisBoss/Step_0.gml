/// @desc Code

#region Talking Code
iconangle -= 5;
if(!start)
{
	if(pos == 3)
	{
		iconscale = Approch(iconscale,1,iconabsorbspd);
		iconx = Approch(iconx,x,point_distance(oPlayer.x,0,x,0)/iconspd);
		icony = Approch(icony,y-32,point_distance(oPlayer.y,0,y-32,0)/iconspd);
			
		if(iconx == x) and (icony == y-32)
		{
			SetAlarm(2,10);
		}
	}
	
	if(pos == 4)
	{
		y = Approch(y,250,5);
		iconx = Approch(iconx,x,point_distance(oPlayer.x,0,x,0)/(iconspd/2));
		icony = Approch(icony,y-32,point_distance(oPlayer.y,0,y-32,0)/(iconspd/2));
	}
	
	if(pos == 5)
	{
		x = Approch(x,room_width/2,5);
		y = Approch(y,150,5);
		iconx = Approch(iconx,x,point_distance(oPlayer.x,0,x,0)/(iconspd/2));
		icony = Approch(icony,y-32,point_distance(oPlayer.y,0,y-32,0)/(iconspd/2));
		yy = y;
		if(sprite_index == sEvilChrisBossFly) and (image_index == 0)
		{
			sprite_index = sEvilChrisBossTurn;
		}
	}
	
	if(textobject == noone) or (alarm[0] <= 0)
	{
		if(pos < array_length_1d(text))
		{
			with(textobject)
			{
				instance_destroy();
			}
			
			if(pos != 5)
			{
				textobject = instance_create_depth(x,bbox_top-16,-10000,oText);
			
				with(textobject)
				{
					text = string_replace(other.text[other.pos],"Caelan",global.name[global.character]);
					length = string_length(text);
				}
			}
			
			if(talknumber != 0) and (!global.retrovoice) and (!global.credits)
			{
				audio_stop_sound(talksound);
				if(talknumber == 1) and (pos == 0)
				talksound = audio_play_sound(ChooseDependingOnInput(global.TalkVoiceK[talknumber,pos],global.TalkVoiceG[talknumber,pos]),1,false);
				else if(string_replace(text[pos],"Caelan","") != text[pos])
				talksound = audio_play_sound(ChooseDependingOnCharacter(global.TalkVoiceC[talknumber,pos],global.TalkVoiceA[talknumber,pos],global.TalkVoiceB[talknumber,pos],global.TalkVoiceE[talknumber,pos]),1,false);
				else
				talksound = audio_play_sound(global.TalkVoice[talknumber,pos],1,false);
			}
			
			alarm[0] = room_speed*3.75;
			
			switch(pos)
			{
				case 1:
				{
					sprite_index = sEvilChrisBossIntro;
					image_index = 0;
					image_speed = 1;
					break;
				}
				case 2:
				{
					sprite_index = sEvilChrisBossStand;
					image_index = 0;
					image_speed = 1;
					break;
				}
				case 3:
				{
					sprite_index = sEvilChrisBossFly;
					image_index = 0;
					image_speed = 1;
					break;
				}
			}
			pos++;
			
			tree_speed += 5;
			layer_hspeed(tree_id,tree_speed);
			mountain_speed -= 5;
			layer_hspeed(mountain_id,mountain_speed);
		}
		else
		{
			with(textobject)
			{
				instance_destroy();
			}
			pos++;
			alarm[0] = room_speed*3.75;
		}
	}
	else if(instance_exists(textobject))
	{
		textobject.x = x;
		textobject.y = bbox_top-16;
	}
	
	if(alarm[1] <= 0)
	{
		background_val = Approch(background_val,0,9.11);
		var col = make_colour_hsv(background_hue,background_sat,background_val);
		layer_background_blend(background_id,col);
		
		if(background_val == 0)
		{
			start = true;
			oPlayer.hascontrol = true;
			if(!instance_exists(oBossHealthBar)) instance_create_layer(0,0,layer,oBossHealthBar);
		}
	}
}
#endregion

#region Boss Code
if(start) and (hp > 0)
{
	iconx = Approch(iconx,x,point_distance(oPlayer.x,0,x,0)/iconspd);
	icony = Approch(icony,y-32,point_distance(oPlayer.y,0,y-32,0)/iconspd);
	y = Wave(yy-5,yy+5,5,0);
	
	if(!stopattack)
	script_execute(attackscript[attack]);
	
	SetAlarm(5,warningspd);
	
	if(playerhealth <= 0)
	{
		SlideTransistion(TRANS_MODE.GOTO,rFinalBossEvilChrisFightIntro);
	}
}
#endregion

#region Defeated
if(hp <= 0)
{
	oGlobalController.pause = true;
	oPlayer.hascontrol = false;
	switch(defeatphase)
	{
		case 0:
		{
			background_val = Approch(background_val,255,15);
			tree_speed = Approch(tree_speed,0,1);
			layer_hspeed(tree_id,tree_speed);
			mountain_speed = Approch(mountain_speed,0,1);
			layer_hspeed(mountain_id,mountain_speed);
			var col = make_colour_hsv(background_hue,background_sat,background_val);
			layer_background_blend(background_id,col);
			with(pEvilChrisWeapon)
			{
				image_xscale = Approch(image_xscale,0,0.1);
				image_yscale = Approch(image_yscale,0,0.1);
				
				if(image_xscale == 0) or (image_yscale == 0)
				{
					instance_destroy();
				}
			}
			
			with(oHeart)
			{
				image_xscale = Approch(image_xscale,0,0.1);
				image_yscale = Approch(image_yscale,0,0.1);
				
				if(image_xscale == 0) or (image_yscale == 0)
				{
					instance_destroy();
				}
			}
			
			if(!instance_exists(pEvilChrisWeapon)) and (!instance_exists(oHeart)) and (background_val == 255) and (tree_speed == 0) and (mountain_speed == 0)
			{
				defeatphase++;
			}
			break;
		}
		case 1:
		{
			iconyvsp += defeatvsp;
			icony += iconyvsp;
			if(image_index = 0)
			sprite_index = sEvilChrisBossLook;
			break;
		}
		case 2:
		{
			sprite_index = sEvilChrisBossFall;
			
			defeatvsp += defeatgrv;
			y += defeatvsp;
			
			if(place_meeting(x,y+defeatvsp,pCollide))
			{
				while(!place_meeting(x,y+sign(defeatvsp),pCollide)) y += sign(defeatvsp);
				defeatphase++;
			}
			break;
		}
		case 3:
		{
			sprite_index = sEvilChrisBossFallen;
			SetAlarm(6,room_speed);
			break;
		}
		case 4:
		{
			deadalpha = Approch(deadalpha,Wave(0,1,2,0),0.1);
			SetAlarm(6,room_speed*5);
			break;
		}
		case 5:
		{
			deadalpha = Approch(deadalpha,Wave(0,1,2,0),0.1);
			ghostalpha = Approch(ghostalpha,1,0.05);		
			if(ghostalpha >= 0.5)
			image_alpha = Approch(image_alpha,0,0.05);
			
			if(image_alpha == 0) SetAlarm(6,room_speed/2);
			break;
		}
		case 6:
		{
			SlideTransistionFlashScreen(TRANS_MODE.GOTO,rFinalBossEvilChrisDefeat);
			break;
		}
	}
}
#endregion

fireindex+=0.5;
if(pos >= 4 and hp > 0)
{
	firealpha = Approch(firealpha,0.3,0.05);
}
else
{
	firealpha = Approch(firealpha,0,0.05);
}