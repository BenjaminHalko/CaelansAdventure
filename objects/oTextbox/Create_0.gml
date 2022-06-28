/// @desc
text = "";
maxtext = 20;
blink = false;
blinkrate = room_speed/2;
alarm[0] = blinkrate;
instance_create_depth(oCamera.x,oCamera.y+96,depth,oTextboxButton);
keyboard_string = "";