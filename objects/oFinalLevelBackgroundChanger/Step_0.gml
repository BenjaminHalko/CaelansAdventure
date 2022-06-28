/// @desc

for(var i = 0; i < array_length_1d(cloudtop); i++)
{
	layer_y(cloudtop[i],layer_get_y(cloudtopmain));
}

for(var i = 0; i < array_length_1d(cloudbottom); i++)
{
	layer_y(cloudbottom[i],layer_get_y(cloudbottommain));
}

for(var i = 0; i < array_length_1d(stars); i++)
{
	layer_x(stars[i],layer_get_x(starsmain));
	layer_y(stars[i],layer_get_y(starsmain));
}

for(var i = 0; i < array_length_1d(trees); i++)
{
	layer_x(trees[i],layer_get_x(treesmain));
	layer_y(trees[i],layer_get_y(treesmain));
}

for(var i = 0; i < array_length_1d(mountains); i++)
{
	layer_x(mountains[i],layer_get_x(mountainsmain));
	layer_y(mountains[i],layer_get_y(mountainsmain));
}

for(var i = 0; i < array_length_1d(mountainsdontscroll); i++)
{
	layer_x(mountainsdontscroll[i],layer_get_x(mountainsdontscrollmain));
	layer_y(mountainsdontscroll[i],layer_get_y(mountainsdontscrollmain));
}

grasslandsalpha = Approch(grasslandsalpha,(oGlobalController.song == mGrasslandsDay),backgroundfade);
undergroundalpha = Approch(undergroundalpha,(oGlobalController.song == mUndergroundDay),backgroundfade);
desertalpha = Approch(desertalpha,(oGlobalController.song == mDesertDay),backgroundfade);
snowalpha = Approch(snowalpha,(oGlobalController.song == mSnowDay),backgroundfade);
forestalpha = Approch(forestalpha,(oGlobalController.song == mForestDay),backgroundfade);
hauntedhousealpha = Approch(hauntedhousealpha,(oGlobalController.song == mHauntedHouseDay),backgroundfade);
airshipalpha = Approch(airshipalpha,(oGlobalController.song == mAirshipDay),backgroundfade);
castlealpha = Approch(castlealpha,(oGlobalController.song == mCastleDay),backgroundfade);

grasslandsnightalpha = Approch(grasslandsnightalpha,(oGlobalController.song == mGrasslandsNight),backgroundfade);
undergroundnightalpha = Approch(undergroundnightalpha,(oGlobalController.song == mUndergroundNight),backgroundfade);
desertnightalpha = Approch(desertnightalpha,(oGlobalController.song == mDesertNight),backgroundfade);
snownightalpha = Approch(snownightalpha,(oGlobalController.song == mSnowNight),backgroundfade);
forestnightalpha = Approch(forestnightalpha,(oGlobalController.song == mForestNight),backgroundfade);
hauntedhousenightalpha = Approch(hauntedhousenightalpha,(oGlobalController.song == mHauntedHouseNight),backgroundfade);
airshipnightalpha = Approch(airshipnightalpha,(oGlobalController.song == mAirshipNight),backgroundfade);
castlenightalpha = Approch(castlenightalpha,(oGlobalController.song == mCastleNight),backgroundfade);

homealpha = Approch(homealpha,(oGlobalController.song == mHome),backgroundfade);

layer_background_alpha(layer_background_get_id(treesmain),grasslandsalpha);
layer_background_alpha(layer_background_get_id(mountainsmain),grasslandsalpha);
layer_background_alpha(layer_background_get_id(background[0]),grasslandsalpha);

layer_background_alpha(layer_background_get_id(mountains[0]),undergroundalpha);

layer_background_alpha(layer_background_get_id(mountains[1]),desertalpha);
layer_background_alpha(layer_background_get_id(background[1]),desertalpha);

layer_background_alpha(layer_background_get_id(mountains[2]),snowalpha);
layer_background_alpha(layer_background_get_id(background[2]),snowalpha);

layer_background_alpha(layer_background_get_id(mountainsdontscrollmain),forestalpha);

layer_background_alpha(layer_background_get_id(background[3]),hauntedhousealpha);

layer_background_alpha(layer_background_get_id(cloudtopmain),airshipalpha);
layer_background_alpha(layer_background_get_id(cloudbottommain),airshipalpha);

layer_background_alpha(layer_background_get_id(mountainsdontscroll[0]),castlealpha);

layer_background_alpha(layer_background_get_id(mountainsdontscroll[1]),castlenightalpha);

layer_background_alpha(layer_background_get_id(cloudtop[0]),airshipnightalpha);
layer_background_alpha(layer_background_get_id(cloudbottom[0]),airshipnightalpha);

layer_background_alpha(layer_background_get_id(trees[0]),hauntedhousenightalpha);
layer_background_alpha(layer_background_get_id(mountains[3]),hauntedhousenightalpha);
layer_background_alpha(layer_background_get_id(starsmain),hauntedhousenightalpha);
layer_background_alpha(layer_background_get_id(background[4]),hauntedhousenightalpha);

layer_background_alpha(layer_background_get_id(mountainsdontscroll[2]),forestnightalpha);

layer_background_alpha(layer_background_get_id(mountains[4]),snownightalpha);
layer_background_alpha(layer_background_get_id(stars[2]),snownightalpha);

layer_background_alpha(layer_background_get_id(mountains[5]),desertnightalpha);
layer_background_alpha(layer_background_get_id(stars[0]),desertnightalpha);

layer_background_alpha(layer_background_get_id(mountains[6]),undergroundnightalpha);

layer_background_alpha(layer_background_get_id(trees[1]),grasslandsnightalpha);
layer_background_alpha(layer_background_get_id(mountains[7]),grasslandsnightalpha);
layer_background_alpha(layer_background_get_id(stars[1]),grasslandsnightalpha);

layer_background_alpha(layer_background_get_id(background[5]),homealpha);
layer_background_alpha(home,homealpha);

if(snowalpha == 1) or (snownightalpha == 1)
{
	if(!snowing)
	{
		ps = part_system_create();
		em = part_emitter_create(ps);
		part_emitter_region(ps,em,0,room_width,-30,0,ps_shape_rectangle,ps_distr_linear)
		pt_snow = part_type_create();
		var pt = pt_snow;
		part_type_shape(pt,pt_shape_snow);
		part_type_size(pt,0.02,0.2,0,0);
		part_type_color1(pt,c_white);
		part_type_speed(pt,2,3,0,0);
		part_type_direction(pt,270,270,0,60);
		part_type_life(pt,300,1000);
		snowem = part_emitter_create(ps);
		part_emitter_region(ps,snowem,0,room_width,-16,0,ps_shape_rectangle,ps_distr_linear);
		snowing = true;
	}
	part_emitter_stream(ps,snowem,pt_snow,3);
}
else
{
	if(snowing)
	{
		part_type_destroy(pt_snow);
		part_system_destroy(ps);
		snowing = false;
	}
}

if(hauntedhousealpha == 0) and (hauntedhousenightalpha == 0)
{
	instance_deactivate_object(obj_shadow_caster);
}
else
{
	instance_activate_object(obj_shadow_caster);
}

if(homealpha == 0)
{
	instance_deactivate_layer(home);
	instance_activate_layer("MoreWalls");
}
else
{
	instance_activate_layer(home);
	instance_deactivate_layer("MoreWalls");
	if(layer_exists("WallsTilesSecert"))
	layer_destroy(layer_get_id("WallsTilesSecert"));
}