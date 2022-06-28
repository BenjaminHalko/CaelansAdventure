/// @desc
text = "";
maxtext = 15;
blink = false;
blinkrate = room_speed/2;
alarm[0] = blinkrate;
instance_create_depth(oCamera.x,oCamera.y+96,depth,oTextboxButton);
keyboard_string = "";
image_alpha = 0;
question = oTest.question;
sound = noone;

pitch[0] = 130.81;
pitch[1] = 155.56;
pitch[2] = 185;
pitch[3] = 220;
pitch[4] = 261.63;
pitch[5] = 311.13;
pitch[6] = 369.99;
pitch[7] = 440;
pitch[8] = 523.25;
pitch[9] = 622.25;
pitch[10] = 739.99;
pitch[11] = 880.00;
pitch[12] = 1046.50;
pitch[13] = 1244.51;
pitch[14] = 1479.98;