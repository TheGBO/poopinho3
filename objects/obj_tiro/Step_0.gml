timer -= 1;

if (timer <= 0){
	instance_destroy(self)
	timer = room_speed*5;
}