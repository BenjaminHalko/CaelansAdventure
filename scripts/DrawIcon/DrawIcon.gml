/// @desc DrawIcon
/// @arg x
/// @arg y
/// @arg #
/// @arg scale
/// @arg rotation
/// @arg alpha
/// @arg whole

var _x = argument0;
var _y = argument1;
var _n = argument2;
var _s = argument3;
var _r = argument4;
var _a = argument5;
var _w = argument6;
var _c = c_red;

if(global.annaramode) _c = make_color_rgb(255,0,255);

if(!_w)
{
	draw_sprite_ext(sIcon,_n,_x,_y,_s,_s,_r,_c,_a);
}
else
{
	var _cc,_aa;
	for(var i = sprite_get_number(sIcon); i > 0; i--)
	{
		if(i > _n)
		{ 
			_cc = c_blue;
			if(global.annaramode) _cc = make_color_rgb(0,84,255);
			_aa = _a*0.5;
		}
		else
		{
			_cc = _c;
			_aa = _a;
		}
		draw_sprite_ext(sIcon,i,_x,_y,_s,_s,_r,_cc,_aa);
	}
}