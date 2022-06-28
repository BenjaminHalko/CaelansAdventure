/// @desc Throw Objects
if(phase < 7) or (phase == 17)
{
	for(var i = -2; i <= 2; i++)
	{
		var throw = instance_create_layer(736,384,"Throwables",oThrowable);
		throw.yy = i*40;
	}
}
else if(phase > 13)
{
	for(var i = -6; i <= 3; i++)
	{
		var throw = instance_create_layer(736,384,"Throwables",oThrowable);
		throw.yy = i*30;
	}
}