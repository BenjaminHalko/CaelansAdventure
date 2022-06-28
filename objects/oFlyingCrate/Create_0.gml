/// @desc
hsp = 7;
scale = 1;
scalespd = 0.25;
moving = false;
movingdelay = 60;
if(oFlyingShip.phase == 1) or (oFlyingShip.phase == 4) or (oFlyingShip.phase == 2) or (oFlyingShip.phase == 6) movingdelay = 30;

if(oFlyingShip.phase == 5) movingdelay = 15;
image_xscale = 0;
image_yscale = 0;