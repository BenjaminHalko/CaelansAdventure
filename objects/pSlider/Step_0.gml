/// @description Check for no longer selected
if selected_ {
	Inputs()
	if(key_enter) and (alarm[0] <= 0)
	{
		selected_ = false;
		oOptionsSound.selected = true;
	}
	if(key_right) value_+=0.01;
	if(key_left) value_-=0.01;
	value_ = clamp(value_, 0, max_value_);
	event_user(0);
	if(!key_left) and (!key_right)
	buttonscale = Approch(buttonscale,Wave(0.75,1.25,1,0),0.01);
	else
	buttonscale = Approch(buttonscale,(0.5+(value_/2))*1.25,0.01);
}
else
{
	buttonscale = Approch(buttonscale,1,0.01);
}