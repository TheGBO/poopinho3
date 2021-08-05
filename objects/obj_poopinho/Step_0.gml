cursor_sprite = spr_cursor1;

#region movimento e animacoes

key_up = keyboard_check(ord("W")) || (gamepad_axis_value(4, gp_axislv) = -1);
key_down = keyboard_check(ord("S")) || (gamepad_axis_value(4, gp_axislv) > 0);
key_right = keyboard_check(ord("D")) || (gamepad_axis_value(4, gp_axislh) > 0);
key_left = keyboard_check(ord("A")) || (gamepad_axis_value(4, gp_axislh) = -1);
key_attack = mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(4, gp_shoulderrb);

if((key_up) & place_free(x,y-col)){
y -= spd;
}

if((key_down) & place_free(x,y+col)){
y += spd;
}
	
if((key_left) & place_free(x-col, y)){
x -= spd;
image_xscale = -0.4;
}


if((key_right) & place_free(x+col, y)){
x += spd;
image_xscale = 0.4;
}

if(key_up || key_down || key_left || key_right){
	andando = true;
	atacando = false;
}else{
	andando = false;
}

if(andando){
sprite_index = spr_player_walk;
}

else if((!andando) && (!atacando)){
	sprite_index = spr_player_idle
}
#endregion
	
#region armas
	if((key_attack) && (hand == true) && (seleciona == 1)){
		sprite_index = spr_player_punch;
		atacar(seleciona);
		atacando = true;
	    andando = false;
		
	}
	
	if((key_attack) && (faca == true) && (seleciona == 2)){
		
		sprite_index = spr_player_knife;
		atacar(seleciona);
		atacando = true;
	    andando = false;	
		alarm[10] = 20;
	
	}
	if((key_attack) && (pistola == true) && (seleciona == 3)){
		sprite_index = spr_player_pistol;
		atacar(seleciona);
		atacando = true;
	    andando = false;		
	}
	
	if((key_attack) && (espingarda == true) && (seleciona == 4) && (cooldown == 0)){
		cooldown = 100;
		sprite_index = spr_player_shotgun;
		atacar(seleciona);
		atacando = true;
	    andando = false;			
	}	
#endregion

#region atributos vida e etc
if(cooldown != 0){
	cooldown -= 1;
}	
	


if(vida > vidamax){
	vida = vidamax;
}

if(mana > manamax){
	mana = manamax;
}
if(vida <= 0){
	room_restart();
	mortes -=1;
}
if(mana <= 0){
	room_restart();
	mana = manamax;
	x = 96
	y = 96
}
#endregion

#region dano alheio e inimigos
if(mortes <= 0){
	audio_stop_all();
	instance_destroy(self);
	room_goto(morte);
}

if(distance_to_object(obj_bola1) <= 8){
	tomardano(0.1);
}

if(distance_to_object(obj_bola_coco) <= 8){
	tomardano(1);
}

if(distance_to_object(obj_bola_arroz) <= 8){
	tomardano(2);
}

if(distance_to_object(obj_eslamigo) <= 8){
	tomardano(0.8);
}

if(distance_to_object(obj_eslamigo_fraco) <= 8){
	tomardano(0.4);
}

#endregion
