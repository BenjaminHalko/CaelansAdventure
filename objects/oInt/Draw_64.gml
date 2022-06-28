/// @desc
if(firststart) or (textToDraw != "")
{
	SetAlarm(alarm[0],5);
	var _scale = Wave(0.9,1,5,0);
	draw_set_font(fTestQuestion);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_aqua);
	draw_text_transformed(display_get_gui_width()/2-(string_width(text)*_scale/2),display_get_gui_height()/8*7,textToDraw,_scale,_scale,0);
	
	if(char >= string_length(text))
	{
		for (i=gp_face1; i<gp_axisrv; i++){
	    if gamepad_button_check_pressed(0, i){
	        firststart = false;
			SlideTransistion(TRANS_MODE.GOTO,rHouse);
			if(!audio_is_playing(mIcon))
			{
				var sound = audio_play_sound(mIcon,1,false);
				audio_sound_gain(sound,0,4500);
			}
	        exit;
	        }
	    }
	}
}