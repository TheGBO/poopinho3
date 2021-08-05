if(spawning){
	sprite_index = spr_boss_spawning;

}
if(walking){
	sprite_index = spr_boss_walk;
	direction = point_direction(x,y,obj_poopinho.x,obj_poopinho.y);
	speed = spdboss;
}