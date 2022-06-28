function SkeletonAttack4() {
	var blast = instance_create_layer(7840,576,"Blast",oBlast);
	blast.image_xscale = 1.561404;
	blast.image_yscale = 1.727273;
	blast.image_angle = 270;
	blast.delay = room_speed;

	var blast = instance_create_layer(7584,544,"Blast",oBlast);

	var blast = instance_create_layer(7584,608,"Blast",oBlast);
	blast.delay = 10;


	var blast = instance_create_layer(8096,544,"Blast",oBlast);
	blast.image_angle = 180;

	var blast = instance_create_layer(8096,608,"Blast",oBlast);
	blast.delay = 10;
	blast.image_angle = 180;


	stopattack = true;


}
