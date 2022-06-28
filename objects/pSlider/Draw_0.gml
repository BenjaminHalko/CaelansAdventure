/// @description Draw the slider
draw_self();
draw_sprite_part(sprite_index, 1, 0, 0, sprite_width*value_, sprite_height, x, y-sprite_get_yoffset(sprite_index));
draw_sprite_ext(s_slider_button, 0, x+sprite_width*value_, y,buttonscale,buttonscale,image_angle,image_blend,image_alpha);
draw_set_color(c_white);
draw_set_font(fSlider);
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
draw_text(x-25,y,string(round(value_*100))+"%");
draw_set_valign(fa_top);
draw_set_halign(fa_left);