/// @desc
y = Wave(ystart-margin,ystart+margin,2,0);
if(destroy)
{
	image_alpha = Approch(image_alpha,0,0.2);
	if(image_alpha == 0)
	{
		Save("Extras","Collected - "+string(number),true);
		instance_destroy();
		
		if(tutorial) and (instance_exists(oVaneesa))
		{
			with(instance_create_depth(oVaneesa.x,oVaneesa.bbox_top-16,-10000,oText))
			{
				text = "You got a 'Get-Em'!\n'Get-Em's are used to\nunlock extras!\nTry finding more!";
				length = string_length(text);
			}
			
			audio_play_sound(vVaneesaHome3,1,false);
		}
	}
}

if(point_in_circle(oPlayer.x,oPlayer.y,x,y,200)) and (!oCamera.fullscreen)
{
	image_alpha = Approch(image_alpha,1,alphaspd);
}
else
{
	image_alpha = Approch(image_alpha,0,alphaspd);
}