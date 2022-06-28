///MUST!!! disable automatic drawing of the application surface.
///It will be manually drawn too in the Draw GUI event with the CRT shader applied.
///If you're drawing everything to your own surface then this should already be disbaled.
application_surface_draw_enable(false);
depth = 100000;
scr_CRT_init_shader(view_camera[0], true, 0.12, true, true, false, 0.03, 80.0, 1.0, true, 0.125);