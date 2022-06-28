/// @desc DrawIcon

var _x = argument0;
var _y = argument1;
var _n = argument2;
var _s = argument3;
var _r = argument4;
var _a = argument5;
var _w = argument6;
var _c = c_red;

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