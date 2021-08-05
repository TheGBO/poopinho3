mp_grid_clear_all(all);
//pathfinding

var cell_width = 32;
var cell_height = 64;

var h_cells = room_width div cell_width;
var v_cells = room_height div cell_height;

global.grid = mp_grid_create(0,0,h_cells,v_cells,cell_width,cell_height);

mp_grid_add_instances(global.grid, obj_parede,true);
mp_grid_add_instances(global.grid, obj_telhabosta,true);

function atualizargrid(){
	mp_grid_clear_all(global.grid);
	mp_grid_add_instances(global.grid, obj_parede,true);
	mp_grid_add_instances(global.grid, obj_telhabosta,true);
}
alarm[0] = 3*room_speed;