damaged = true;

alarm[1] = 5;

with(other) instance_destroy();

bossvida += -other.dano;

audio_play_sound(inimigodano, 0, 0);

if(bossvida <= 0)
{
	audio_play_sound(inimigomorte, 0, 0);

	instance_destroy();
}