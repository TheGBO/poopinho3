if(global.pause) exit;
mp_potential_step(obj_poopinho.x,obj_poopinho.y,spdgosma,true);
if(obj_poopinho.x < self.x){
	image_xscale = 1
}
if(obj_poopinho.x > self.x){
	image_xscale = -1
}

