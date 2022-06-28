shader_to_use = sh_CRT_Windows_full_shader;

crt_surface_width  = view_wport[1] * ResoloutionW;
crt_surface_height = view_hport[1] * ResoloutionH;

uni_crt_sizes = shader_get_uniform(shader_to_use, "u_crt_sizes");
distort = shader_get_uniform(shader_to_use, "distort");
distortion = shader_get_uniform(shader_to_use, "distortion");
border = shader_get_uniform(shader_to_use, "border");

var_distort = true;
var_distortion_ammount = 0.25;
var_border = true;

surface_width  = view_wport[1] * ResoloutionW;
surface_height = view_hport[1] * ResoloutionH;