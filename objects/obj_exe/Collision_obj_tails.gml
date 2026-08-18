global.lifes = 0;
obj_tails.shield = 0;
if !other.dead
{
	with other
	{
		GMScript_hurttails();
	}
	randomize();
	if flowery
		scr_sfx(choose(snd_flowery_voiceclip_get_a_chance_1, snd_flowery_voiceclip_get_a_chance_2, snd_flowery_voiceclip_go_home, snd_flowery_voiceclip_goodbye, snd_flowery_voiceclip_heh_it_s_my_jarona), 0);
	audio_pause_sound(global.mu);
	audio_pause_sound(mu_invincibility);
	audio_pause_sound(mu_speedshoes);
}