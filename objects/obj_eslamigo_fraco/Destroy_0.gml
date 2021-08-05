

repeat(10){
instance_create_layer(x,y,"Instances",obj_projetil_louco);
with(obj_projetil_louco){
	rxmenos =  -1 * obj_poopinho.x + random_range(-360,360);
	rymenos =  -1 * obj_poopinho.y + random_range(-360,360);
	rxmais =  1 * obj_poopinho.x + random_range(-360,360);
	rymais =  1 * obj_poopinho.y + random_range(-360,360);
	rx = rxmais;
	ry = rymais;
	image_angle = point_direction(x,y,rx,ry);
	direction = point_direction(x,y,rx,ry);
}
}