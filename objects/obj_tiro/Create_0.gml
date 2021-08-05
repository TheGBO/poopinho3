room_speed = 60;
timer = room_speed * 5;
dano = 30;
DestinationX = mouse_x + random_range(-100, 100);
DestinationY = mouse_y + random_range(-100, 100);

speed = 30;

audio_play_sound(som_tiro, 0, 0);

if((obj_poopinho.pistola == true) && (obj_poopinho.seleciona == 3)){
	image_angle = point_direction(x,y, mouse_x, mouse_y);
	direction = point_direction(x, y, mouse_x, mouse_y);
}else if ((obj_poopinho.espingarda == true) && (obj_poopinho.seleciona == 4)){
	image_angle = point_direction(x,y, DestinationX, DestinationY);
	direction = point_direction(x, y, DestinationX, DestinationY);
}
