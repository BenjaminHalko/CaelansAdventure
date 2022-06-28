/// @desc
barheight = Approch(barheight,(alarm[0] > 0),0.05);

if(barheight <= 0) instance_destroy();