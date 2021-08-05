with(other) instance_destroy();

vidatelhabosta += -other.dano;

audio_play_sound(inimigodano, 0, 0);

if(vidatelhabosta <= 0)
{
	audio_play_sound(inimigomorte, 0, 0);

	instance_destroy();
}