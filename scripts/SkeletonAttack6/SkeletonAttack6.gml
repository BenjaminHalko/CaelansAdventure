function SkeletonAttack6() {
	var blast = instance_create_layer(7552,672,"Blast",oBlast);
	blast.image_xscale = 2.403509;
	blast.image_yscale = 2.454545;
	blast.delay = room_speed*2;

	var blast = instance_create_layer(8144,672,"Blast",oBlast);
	blast.image_xscale = 2.403509;
	blast.image_yscale = 2.454545
	blast.image_angle = 180;
	blast.delay = room_speed*2;

	var blast = instance_create_layer(7552,784,"Blast",oBlast);
	blast.image_xscale = 2.403509;
	blast.image_yscale = 2.454545;

	var blast = instance_create_layer(8144,784,"Blast",oBlast);
	blast.image_xscale = 2.403509;
	blast.image_yscale = 2.454545;
	blast.image_angle = 180;

	stopattack = true;


}
