/// @desc
if(!instance_exists(oTestWrittenQuestion)) instance_destroy();
text = string_upper(keyboard_string);
if(string_length(text) >= maxtext)
{
	text = string_copy(text,0,maxtext);
	keyboard_string = text;
}