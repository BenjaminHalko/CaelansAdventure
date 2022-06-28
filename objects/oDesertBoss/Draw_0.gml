/// @desc
draw_self();
if(allowhit == false)
{
	Rumble();
	drawwhite = !drawwhite;
	if(drawwhite)
	{
		shader_set(shWhite);
		draw_self();
		shader_reset();
	}
}