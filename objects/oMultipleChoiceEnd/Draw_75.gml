/// @desc

draw_sprite_ext(sprite_index,image_index,(x-camera_get_view_x(view_camera[0]))*(display_get_gui_width()/camera_get_view_width(view_camera[0])),(y-camera_get_view_y(view_camera[0]))*(display_get_gui_height()/camera_get_view_height(view_camera[0])),1,1,image_angle,image_blend,image_alpha);
if(color_get_value(image_blend) < 128)
{
	draw_set_colour(c_white);
}
else
{
	draw_set_colour(c_black);
}

draw_set_alpha(image_alpha);
draw_set_font(fTestAnswer);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var width = string_width(text);
var height = string_height(text);

var scale = (200*image_xscale)/max(width,height);
draw_text_transformed((x-camera_get_view_x(view_camera[0]))*(display_get_gui_width()/camera_get_view_width(view_camera[0])),(y-camera_get_view_y(view_camera[0]))*(display_get_gui_height()/camera_get_view_height(view_camera[0])),text,scale,scale,0);
draw_set_alpha(1);

if(!red)
{
	with(oMultipleChoice)
	{
		if(number == 1)
		{
			draw_sprite_ext(sprite_index,other.image_index,(x-camera_get_view_x(view_camera[0]))*(display_get_gui_width()/camera_get_view_width(view_camera[0])),(y-camera_get_view_y(view_camera[0]))*(display_get_gui_height()/camera_get_view_height(view_camera[0])),1,1,image_angle,other.image_blend,other.otheralpha);
			draw_set_alpha(other.otheralpha);
			draw_set_font(fTestAnswer);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);

			var width = string_width(other.text);
			var height = string_height(other.text);

			var scale = (200*image_xscale)/max(width,height);
			draw_text_transformed((x-camera_get_view_x(view_camera[0]))*(display_get_gui_width()/camera_get_view_width(view_camera[0])),(y-camera_get_view_y(view_camera[0]))*(display_get_gui_height()/camera_get_view_height(view_camera[0])),other.text,scale,scale,0);
			draw_set_alpha(1);
		}
	}
}