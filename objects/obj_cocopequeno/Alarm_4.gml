/// @description pathfinding 
var px = (obj_poopinho.x div 32)* 32 + 16;
var py = (obj_poopinho.y div 32)* 32 + 16;
if (mp_grid_path(global.grid, path, x, y, px, py, 1)){
	path_start(path, spdkk, path_action_stop, false);
}

alarm[4] =10;
