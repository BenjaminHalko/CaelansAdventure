 /// @desc
//Shader Code
ratio = view_get_hport( 0 ) / camera_get_view_height( view_camera[0] );
water_surface = surface_create( 81 * ratio, 81 * ratio );

// shader var
uTime = shader_get_uniform( shWater, "Time" );
vsp = 0;
grv = 0.3;
top = false;
loaded = false;

alarm[0] = 1;

var first = false;
for(var i = 0; i < sprite_height; i+=32)
{
	for(var j = 0; j < sprite_width; j+=32)
	{
		if(first)
		instance_create_layer(x+j,y+i,layer,oBossWater);
		else
		first = true;
	}
}

image_xscale = 1;
image_yscale = 1;
collidewater = noone;
viewxprevious = camera_get_view_x( view_camera[0] );
viewyprevious = camera_get_view_y( view_camera[0] );