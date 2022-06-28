///Ensure GUI layer is the correct size, same as the application surface.
crt_surface_width  =            view_get_wport(view_current)/2;
crt_surface_height =            view_get_hport(view_current)/2;
surface_width  =				camera_get_view_width(_crt_camera);
surface_height =				camera_get_view_height(_crt_camera);
///Check if the CRT shader is enabled and apply the effect to the application surface.
if (global.retrofilter) { draw_clear(c_black); scr_CRT_appy_to_surface(application_surface, view_camera[0]); }

application_surface_draw_enable(!global.retrofilter);