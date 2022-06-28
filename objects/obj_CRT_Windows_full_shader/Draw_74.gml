/// @desc
if(global.retrofilter)
{
	shader_set(shader_to_use);
	shader_set_uniform_f(uni_crt_sizes, surface_width, surface_height, crt_surface_width, crt_surface_height);
	shader_set_uniform_f(distort, var_distort);
	shader_set_uniform_f(distortion, var_distortion_ammount);
	shader_set_uniform_f(border, var_border);
	draw_surface_part_ext(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), display_get_gui_width()/8, 0, 0.75*ResoloutionW, ResoloutionH, c_white, 1);
	shader_reset();	
}