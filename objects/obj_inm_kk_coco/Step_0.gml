if(global.pause) exit;
if(sprint){
	instance_create_layer(x,y,"Instances",obj_projetil_louco)
	spdkk = 8
	mp_potential_step(obj_poopinho.x,obj_poopinho.y,spdkk,true);
	sprint = false;
}
if(!sprint){
	spdkk = 0.88
	mp_potential_step(obj_poopinho.x,obj_poopinho.y,spdkk,true);
}
if(distance_to_object(obj_poopinho) <= 8){
	obj_poopinho.tomardano(1.15);
}

mp_potential_step(obj_poopinho.x,obj_poopinho.y,spdkk,true);