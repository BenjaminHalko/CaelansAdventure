/// @desc
backgroundfade = 0.1;
grasslandsalpha = 1;
undergroundalpha = 0;
desertalpha = 0;
snowalpha = 0;
forestalpha = 0;
hauntedhousealpha = 0;
airshipalpha = 0;
castlealpha = 0;
grasslandsnightalpha = 0;
undergroundnightalpha = 0;
desertnightalpha = 0;
snownightalpha = 0;
forestnightalpha = 0;
hauntedhousenightalpha = 0;
airshipnightalpha = 0;
castlenightalpha = 0;
homealpha = 0;
snowing = false;


treesmain = layer_get_id("Trees");
trees[0] = layer_get_id("HauntedHouseTrees");
trees[1] = layer_get_id("GrasslandsNightTrees");

mountainsmain = layer_get_id("Mountains");
mountains[0] = layer_get_id("UndergroundMountains");
mountains[1] = layer_get_id("DesertMountains");
mountains[2] = layer_get_id("SnowMountains");
mountains[3] = layer_get_id("HauntedHouseMountains");
mountains[4] = layer_get_id("SnowNightMountains");
mountains[5] = layer_get_id("DesertNightMountains");
mountains[6] = layer_get_id("UndergroundNightMountains");
mountains[7] = layer_get_id("GrasslandsNightMountains");

mountainsdontscrollmain = layer_get_id("MountainsDontScroll");
mountainsdontscroll[0] = layer_get_id("MountainsDontScrollCastle");
mountainsdontscroll[1] = layer_get_id("MountainsDontScrollCastleNight");
mountainsdontscroll[2] = layer_get_id("MountainsDontScrollForestNight");

cloudtopmain = layer_get_id("CloudsTop");
cloudbottommain = layer_get_id("CloudsBottom");

cloudtop[0] = layer_get_id("CloudsTopNight");
cloudbottom[0] = layer_get_id("CloudsBottomNight");

background[0] = layer_get_id("BackgroundGrasslands");
background[1] = layer_get_id("BackgroundDesert");
background[2] = layer_get_id("BackgroundSnow");
background[3] = layer_get_id("BackgroundHauntedHouse");
background[4] = layer_get_id("BackgroundHauntedHouseNight");
background[5] = layer_get_id("BackgroundHome");

starsmain = layer_get_id("Stars");
stars[0] = layer_get_id("DesertNightStars");
stars[1] = layer_get_id("GrasslandsNightStars");
stars[2] = layer_get_id("SnowNightStars");

var manage = instance_create_depth(x,y,depth,oBackgroundManager);
manage.lay = "Trees";

var manage = instance_create_depth(x,y,depth,oBackgroundManager);
manage.lay = "Mountains";

var manage = instance_create_depth(x,y,depth,oBackgroundManager);
manage.lay = "HauntedHouseTrees";

var manage = instance_create_depth(x,y,depth,oBackgroundManager);
manage.lay = "GrasslandsNightTrees";

var manage = instance_create_depth(x,y,depth,oBackgroundManager);
manage.lay = "DesertMountains";

var manage = instance_create_depth(x,y,depth,oBackgroundManager);
manage.lay = "SnowMountains";

var manage = instance_create_depth(x,y,depth,oBackgroundManager);
manage.lay = "HauntedHouseMountains";

var manage = instance_create_depth(x,y,depth,oBackgroundManager);
manage.lay = "SnowNightMountains";

var manage = instance_create_depth(x,y,depth,oBackgroundManager);
manage.lay = "DesertNightMountains";

var manage = instance_create_depth(x,y,depth,oBackgroundManager);
manage.lay = "GrasslandsNightMountains";


snow = layer_get_id("Snow");

home = layer_get_id("HouseObjects");

event_perform_object(oSnow,ev_other,ev_room_start);

if(global.credits)
{
	backgroundfade = 1;
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
	
	instance_deactivate_object(obj_shadow_caster);
	
	layer_destroy(home);
	
	instance_destroy();
}