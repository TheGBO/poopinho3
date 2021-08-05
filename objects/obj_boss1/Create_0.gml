audio_stop_all();
obj_poopinho.musicaatocar=2;
bossvida = 2520;
spdboss = 3;

damaged = false;
walking = false;
shooting = false;
spawning = false;
alarm[1] = 5;
alarm[2] = 6*room_speed;
alarm[3] = 6*room_speed;
alarm[4] = 6*room_speed;
alarm[6] = 60*room_speed;
function bossatirar(){
	instance_create_layer(x,y,"Instances",obj_projetil_bosta);
}

function spawnar(){
	instance_create_layer(x,y,"Instances",obj_inm_kk);
	audio_play_sound(kkepico,0,false);
}