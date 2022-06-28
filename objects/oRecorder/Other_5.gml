/// @desc
if(room != rInt)
{
	var grid = ds_grid_create(frames+1,4);
	for(var i = 0; i < frames; i++)
	{
		ds_grid_add(grid,i+1,1,record_key_left[i]);
		ds_grid_add(grid,i+1,2,record_key_right[i]);
		ds_grid_add(grid,i+1,3,record_key_jump[i]);	
	}

	var file = file_text_open_write("Record.ini");
	file_text_write_string(file,ds_grid_write(grid));
	file_text_close(file);
	ds_grid_destroy(grid);

	var file = file_text_open_write("Frames.ini");
	file_text_write_string(file,frames+1);
	file_text_close(file);
}