/// @desc Load
global.autojump = true;
global.infintejump = false;
SlideTransistion(TRANS_MODE.GOTO,rGrasslands);
global.credits = true;
instance_create_depth(x,y,oTransition.depth-1,oCredits);
var grid = ds_grid_create(10573,4);
ds_grid_read(grid,Movie());
for(var i = 1; i < 10573; i++)
{
	//Keyboard Keys
	record_key_left[i] = ds_grid_get(grid,i,1);
	record_key_right[i] = ds_grid_get(grid,i,2);
	record_key_jump[i] = ds_grid_get(grid,i,3);
}
frames = 1;
ds_grid_destroy(grid);