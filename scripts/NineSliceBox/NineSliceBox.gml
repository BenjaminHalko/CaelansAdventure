/// @desc NineSliceBox(sprite,subimg,x1,y1,x2,y2,blend,alpha);
/// @arg sprite
/// @arg subimg
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg xscale
/// @arg yscale
/// @arg blend
/// @arg alpha

#region //GET VARIABLES
var _sprite = argument0;
var _subimg = argument1;
var _x1 = argument2;
var _y1 = argument3;
var _x2 = argument4;
var _y2 = argument5;
var _w = _x2-_x1;
var _h = _y2-_y1;
var _xscale = argument6;
var _yscale = argument7;
var _blend = argument8;
var _alpha = argument9;
var _wsize = sprite_get_width(_sprite)/3;
var _hsize = sprite_get_height(_sprite)/3;
#endregion

#region //MIDDLE
draw_sprite_part_ext(_sprite,_subimg,_wsize,_hsize,1,1,_x1+_wsize,_y1+_hsize,(_w-(_wsize*2))*_xscale,(_h-(_hsize*2))*_yscale,c_white,_alpha);
#endregion

#region //CORNERS
//TOP LEFT
draw_sprite_part_ext(_sprite,_subimg,0,0,_wsize,_hsize,_x1,_y1,_xscale,_yscale,_blend,_alpha);
//TOP RIGHT
draw_sprite_part_ext(_sprite,_subimg,_wsize*2,0,_wsize,_hsize,_x1+_w-_wsize,_y1,_xscale,_yscale,_blend,_alpha);
//BOTTOM LEFT
draw_sprite_part_ext(_sprite,_subimg,0,_wsize*2,_wsize,_hsize,_x1,_y1+_h-_hsize,_xscale,_yscale,_blend,_alpha);
//BOTTOM RIGHT
draw_sprite_part_ext(_sprite,_subimg,_wsize*2,_hsize*2,_wsize,_hsize,_x1+_w-_wsize,_y1+_h-_hsize,_xscale,_yscale,_blend,_alpha);
#endregion

#region //EDGES
//LEFT EDGE
draw_sprite_part_ext(_sprite,_subimg,0,_wsize,_hsize,1,_x1,_y1+_hsize,_xscale,(_h-(_hsize*2))*_yscale,_blend,_alpha);
//RIGHT EDGE
draw_sprite_part_ext(_sprite,_subimg,_wsize*2,_wsize,_hsize,1,_x1+_w-_wsize,_y1+_hsize,_xscale,(_h-(_hsize*2))*_yscale,_blend,_alpha);
//TOP EDGE
draw_sprite_part_ext(_sprite,_subimg,_wsize,0,1,_hsize,_x1+_wsize,_y1,(_w-(_wsize*2))*_xscale,_yscale,_blend,_alpha);
//BOTTOM EDGE
draw_sprite_part_ext(_sprite,_subimg,_wsize,_hsize*2,1,_hsize,_x1+_wsize,_y1+_h-_hsize,(_w-(_wsize*2))*_xscale,_yscale,_blend,_alpha);
#endregion