draw_sprite(healthbar_bg,0,160,32);
draw_sprite_stretched(spr_healthbar,0,160,32,(vida/vidamax) * healthbar_width, healthbar_height);
draw_sprite_stretched(gui_hp,0,130,32,32,32);
draw_sprite_stretched(gui_mana,0,130,74,32,32);

draw_sprite_stretched(slot,0,1216,32,128,128);

draw_sprite(healthbar_bg,0,160,74);
draw_sprite_stretched(spr_manabar,0,160,74,(mana/manamax) * manabar_width, manabar_height);
draw_text(160,32,string(vida) + "/" + string(vidamax));
draw_text(160,74,string(mana) + "/" + string(manamax));

if((seleciona == 1) && (hand == true)){
	draw_sprite(gui_punch,0,1216,32);
	
}
if((seleciona == 2) && (faca == true)){
	draw_sprite(gui_stab,0,1216,32);
}
if((seleciona == 3) && (pistola == true)){
	draw_sprite(gui_pistol,0,1216,32);
}
if((seleciona == 4) && (espingarda == true)){
	draw_sprite(gui_shotgun,0,1216,32);
}
draw_text(1216,64, string(seleciona));

