var dropchance = irandom_range(0,5);

if(dropchance = 5){
instance_create_layer(x,y,"Instances",obj_item_vida)
}
else if(dropchance = 3){
instance_create_layer(x,y,"Instances",obj_item_mana)
}
audio_play_sound(inimigomorte,0,false)
instance_destroy(self);
