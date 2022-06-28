/// @desc
if (layer_exists(lay))
{
	var lay_id = layer_get_id(lay);
	var back_id = layer_background_get_id(lay_id);
	depth = layer_get_depth(lay_id)-1;
	if(!layer_background_get_vtiled(back_id))
	{
		layer_set_visible(lay_id,false);
		var sprite = layer_background_get_sprite(back_id);
		var index = layer_background_get_index(back_id)
		var w = sprite_get_width(sprite);
		var h = sprite_get_height(sprite);
		var yy = layer_get_y(lay_id);
		var margin = h/5;
		var alpha = layer_background_get_alpha(back_id);
		var xx = layer_get_x(lay_id);
		
		if(layx[0] == noone)
		{
			for (var i = 0; i < room_height+margin; i += 1)
			{
				layx[i] = irandom(w);
			}
		}
		
		if(room == rFinalBossEvilChrisFight) or (room == rFinalBossEvilRoomFight)
		{
			var totalk = 1;
			for (var i = yy; i < room_height; i += margin)
			{
				totalk+=1;
			}
		}
		
		var k = 1;
		for (var i = yy; i < room_height; i += margin)
		{
			if(room == rFinalBossEvilChrisFight) or (room == rFinalBossEvilRoomFight)
			{
				if(lay == "Mountains") or (lay == "DesertMountains") or (lay == "SnowMountains") or (lay == "HauntedHouseMountains") or (lay == "SnowNightMountains") or (lay == "DesertNightMountains") or (lay == "GrasslandsNightMountains")
				var xmargin = (xx*1.25)/(1+0.25*(totalk-k));
				else
				var xmargin = (xx*4)/(4*(totalk-k))*2;
			}
			else
			{
				if(lay == "Mountains") or (lay == "DesertMountains") or (lay == "SnowMountains") or (lay == "HauntedHouseMountains") or (lay == "SnowNightMountains") or (lay == "DesertNightMountains") or (lay == "GrasslandsNightMountains")
				var xmargin = (xx*1.25)/(1+0.25*k);
				else
				var xmargin = (xx*4)/(4*k)*2;
			}
			while(xmargin >= w)
			{
				xmargin -= w;
			}
			for(var j = xmargin-w-layx[k]; j < room_width; j += w)
			{
				draw_sprite_ext(sprite,index,j,i,1,1,0,c_white,alpha);
			}
			k+=1;
		}
	}
}