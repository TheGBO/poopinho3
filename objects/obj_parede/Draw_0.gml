if(global.niveldeloucura == 0){
for(i=0; i<image_xscale; i++){
    for(j=0; j<image_yscale; j++){
        draw_sprite(parede, 0, x+(i*sprite_get_width(parede)), y+(j*sprite_get_height(parede)));
    }
}
}

if(global.niveldeloucura == 1){
for(i=0; i<image_xscale; i++){
    for(j=0; j<image_yscale; j++){
        draw_sprite(tijolobosta, 0, x+(i*sprite_get_width(tijolobosta)), y+(j*sprite_get_height(tijolobosta)));
    }
}
}