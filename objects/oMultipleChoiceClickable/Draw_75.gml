/// @desc
draw_set_alpha(image_alpha);
draw_set_font(fTestAnswer);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(image_blend);

var width = string_width(text);
var height = string_height(text);

var scale = (200*image_xscale)/max(width,height);
draw_text_transformed((x-camera_get_view_x(view_camera[0]))*(display_get_gui_width()/camera_get_view_width(view_camera[0])),(y-camera_get_view_y(view_camera[0]))*(display_get_gui_height()/camera_get_view_height(view_camera[0])),text,scale,scale,0);
draw_set_alpha(1);