damaged = true;

alarm[1] = 5;

vidamonolito -= other.dano;
instance_destroy(other)
audio_play_sound(inimigodano, 0, 0);
if(vidamonolito <= 0){
	instance_destroy(self);
	audio_play_sound(inimigomorte, 0, 0);
}