/// @desc
if(alarm[0] <= 0)
layer_background_alpha(wall_id,Approch(layer_background_get_alpha(wall_id),1,0.01));

if(alarm[1] <= 0)
layer_background_alpha(tree_id,Approch(layer_background_get_alpha(tree_id),1,0.01));

if(alarm[2] <= 0)
layer_background_alpha(mountain_id,Approch(layer_background_get_alpha(mountain_id),1,0.01));

if(alarm[3] <= 0)
layer_background_alpha(back_id,Approch(layer_background_get_alpha(back_id),1,0.01));