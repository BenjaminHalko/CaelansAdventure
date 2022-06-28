/// @desc

playing = false;
correct = false;
clicked = false;
keyclicked = noone;

keyclickedcolour[true] = c_green;
keyclickedcolour[false] = c_red;
keyhoveredcolour = c_gray;
keynextcolour = c_blue;

notes = 0;

#region Notes
g3 = 196;
a3 = 220;
b3 = 249.94;
c4 = 261.63;
d4 = 293.66;
e4 = 329.63;
f4 = 349.23;
g4 = 392;
a4 = 440;
#endregion

SongJingleBells();


songspd = ((60/playspd)*4)*room_speed;
notenumber = 1;
note = noone;
oGlobalController.pause = true;