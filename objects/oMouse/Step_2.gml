/// @desc
if(!instance_exists(oTest)) and (window_get_fullscreen())
{
	window_set_cursor(cr_none);
}
else
{
	window_set_cursor(cr_default);
}