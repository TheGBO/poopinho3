if(global.pause) exit;
if(sprint){
	spdkk = 8
	mp_potential_step(obj_poopinho.x,obj_poopinho.y,spdkk,true);
}
if(!sprint){
	spdkk = 0.88
	mp_potential_step(obj_poopinho.x,obj_poopinho.y,spdkk,true);
}
if(distance_to_object(obj_poopinho) <= 8){
	obj_poopinho.tomardano(1.15);
}
