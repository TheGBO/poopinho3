mortes = 3; 
window_set_cursor(cr_none);
room_speed = 60;
global.niveldeloucura = 0;
global.pause = false;
spd = 4;
col = spd +1;
vida = 50;
vidamax = 50;
mana = 50;
manamax = 50;
tocarmusica = true;
musicaatocar = 0;
cooldown = 0;
atacando = false;
offset_x = 0;
offset_y = 0;
if (keyboard_check_pressed(vk_space)){
	ataque = true;
}


flash = 0;
timer = 40


seleciona = 1;

hand = true; //index 1
faca = false; // index 2
pistola = false; //index 3
espingarda = false; // index 4
poder = false; //index 5
bomba = false; //index 6
tijolo = false; //index 7

function tomardano(danoatomar){
timer -= 1;
sprite_index = spr_player_flash;
if(timer <= 0){
vida -= danoatomar;
timer = 40;
sprite_index = spr_player_idle;
}
}

function atacar(tipo){

		if((tipo == 1) && (mana >= 0.02)){
			instance_create_layer(x + 0, y + 0, "Instances", bala);
			mana -= 0.02;
			
		}	
		if((tipo = 2) && (mana >= 0.5)){
			instance_create_layer(x + 0, y + 0, "Instances", obj_facada);
			mana -= 0.5;
		}
		if((tipo = 3) && (mana >= 1)){
			instance_create_layer(x + 0, y + 0, "Instances", obj_tiro);
			mana -= 1;
		}
		if((tipo = 4) && (mana >= 1.5)){
			repeat(5){
				instance_create_layer(x + 0, y + 0, "Instances", obj_tiro);
			}
			mana -= 1.5;
		}
	}





healthbar_width = 500;
healthbar_height = 32;
healthbar_x = (500/2) - (healthbar_width/2);

manabar_width = 500;
manabar_height = 32;
mana_x = (500/2) - (manabar_width/2);
