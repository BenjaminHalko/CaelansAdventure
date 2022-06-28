/// @desc
if(debug)
{
	gifrecord = !gifrecord;
	if(gifrecord)
	{
		gif = gif_open(display_get_gui_width(),display_get_gui_height());
	}
	else
	{
		gif_save(gif,"Record.gif");
	}
}