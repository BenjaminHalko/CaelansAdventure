/// @desc

if((oTransition.mode == TRANS_MODE.OFF) or (!oTransition.flash))
{
	if(oCamera.mode == 0) and (!instance_exists(oTest))
	{
		with(oWater)
		{
			if(alarm[0] <= 0)
			{
				// Copy the application_surface to our new surface
				surface_set_target( water_surface );
					surface_copy_part( water_surface, 0, 0, application_surface, sx, sy,31*ratio,32 * ratio);
				surface_reset_target();

				// Apply the shader
				shader_set(shWater);
				    shader_set_uniform_f( uTime, current_time / 1000 );
				    draw_surface_ext( water_surface, x, y, 1/ratio, 1/ratio, 0, c_white, 1 );
				shader_reset();
			}
		}

		with(oBossWater)
		{
			if(alarm[0] <= 0)
			{
				var left = sx;
				var right = 32;
				if(instance_place(x-1,y,oBossWater) == noone)
				{
					left = sx + ratio;
					right--;
				}
			
				if(instance_place(x+1,y,oBossWater) == noone)
				{
					right--;
				}
		
				// Copy the application_surface to our new surface
				surface_set_target( water_surface );
					surface_copy_part( water_surface, 0, 0, application_surface, sx, sy,32 * ratio,32 * ratio);
				surface_reset_target();

				// Apply the shader
				shader_set(shWater);
				    if(instance_exists(oVaneesaHint))
					{
						if(oVaneesaHint.active == false)
						{
							shader_set_uniform_f( uTime, current_time / 1000 );
						}
					}
					else
					{
						shader_set_uniform_f( uTime, current_time / 1000 );
					}
				    draw_surface_ext( water_surface, x, y, 1/ratio, 1/ratio, 0, c_white, 1 );
				shader_reset();
			}
		}
	}

	with(oWater)
	{
		draw_self();
		if(collidewater != noone)
		{
			draw_sprite_stretched(sprite_index,image_index,x,collidewater.bbox_bottom+1,sprite_width,round(bbox_bottom-collidewater.bbox_bottom-32));
		}
	}

	with(oBossWater)
	{
		draw_self();
		if(collidewater != noone)
		{
			draw_sprite_stretched(sprite_index,image_index,x,collidewater.bbox_bottom+1,sprite_width,round(bbox_bottom-collidewater.bbox_bottom-32));
		}
	}
}