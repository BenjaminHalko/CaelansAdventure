/// @desc
if(!destroy)
{
	if(alarm[0] <= 0)
	{
		if(char <= string_length(description))
		{
			alarm[0] = textspd;
		
			if(!instance_exists(global.testquestionobject[test,question])) and (char == string_length(description))
			{
				questionobject = instance_create_depth(0,0,depth,global.testquestionobject[test,question]);
			}
		}
	}
	alpha = Approch(alpha,maxalpha,0.003);
}
else
{
	alpha = Approch(alpha,0,0.003);
	if(alpha == 0) instance_destroy();
}
