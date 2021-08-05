damaged = true;

alarm[1] = 5;

vidamonolito -= other.dano;
audio_play_sound(inimigodano, 0, 0);
instance_destroy(other)
if(vidamonolito <= 0){
	instance_destroy(self);
	audio_play_sound(inimigomorte, 0, 0);
}