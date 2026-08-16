function scr_sfx(sound, pitched)
{
    audio_play_sound(sound, 10, false, 1);
	if pitched
		audio_sound_pitch(sound, random_range(0.9, 1.1));
}

function scr_music(music)
{
    audio_play_sound(music, 10, true, 0.8);
}
