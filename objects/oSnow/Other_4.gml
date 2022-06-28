/// @desc 
ps = part_system_create();
em = part_emitter_create(ps);
part_emitter_region(ps,em,0,room_width,-30,0,ps_shape_rectangle,ps_distr_linear)
pt_snow = part_type_create();
var pt = pt_snow;
part_type_shape(pt,pt_shape_snow);
part_type_size(pt,0.02,0.2,0,0);
part_type_color1(pt,c_white);
part_type_speed(pt,2,3,0,0);
part_type_direction(pt,270,270,0,60);
part_type_life(pt,300,1000);
snowem = part_emitter_create(ps);
part_emitter_region(ps,snowem,0,room_width,-16,0,ps_shape_rectangle,ps_distr_linear);