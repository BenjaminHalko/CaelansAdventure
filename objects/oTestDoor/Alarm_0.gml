/// @desc
explosions++;
if(explosions >= explosionsmax)
{
	alarm[1] = 5;
	instance_create_layer(x,y-4+(sprite_height/2),"explosions",oExplosion);
}
else
{
	var xx = random_range(x-(sprite_width/2),x+(sprite_width/2));
	var yy = random_range(y-4,y-4+sprite_width);
	
	instance_create_layer(xx,yy,"explosions",oExplosionTiny);
}