/// @desc
var lay_id = layer_get_id("WallTiles");
wall_id = layer_background_get_id(lay_id);
var lay_id = layer_get_id("Trees");
tree_id = layer_background_get_id(lay_id);
var lay_id = layer_get_id("Mountains");
mountain_id = layer_background_get_id(lay_id);
var lay_id = layer_get_id("Background");
back_id = layer_background_get_id(lay_id);

layer_background_alpha(wall_id,0);
layer_background_alpha(tree_id,0);
layer_background_alpha(mountain_id,0);
layer_background_alpha(back_id,0);

alarm[0] = room_speed*5;
alarm[1] = room_speed*6;
alarm[2] = room_speed*7;
alarm[3] = room_speed*8;
alarm[4] = room_speed*10;