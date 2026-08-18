with obj_tails
	var dis = distance_to_object(obj_exe)
var dummyvar = 0;
if !obj_exe.gotime && global.seconds < 0 && room = greenhill
{
	audio_stop_all()
	global.mu = audio_play_sound(mu_greenhill, 10, false, 0.8, 0, 0.9)
}
if !obj_exe.gotime && global.seconds < 0 && room = labyrinth
{
	audio_stop_all()
	global.mu = audio_play_sound(mu_labyrinth, 10, false, 0.8, 0, 0.7)
}
if obj_tails.powerup != 1 && audio_is_playing(mu_invincibility)
{
	audio_stop_sound(mu_invincibility);
	audio_resume_all();
}
if obj_tails.powerup = 1 && !audio_is_playing(mu_invincibility)
{
	audio_pause_sound(global.mu);
	audio_play_sound(mu_invincibility, 10, 0, 0.8, 0, 0.9);
}
if obj_tails.powerup != 2 && audio_is_playing(mu_speedshoes)
{
	audio_stop_sound(mu_speedshoes);
	audio_resume_all();
}
if obj_tails.powerup = 2 && !audio_is_playing(mu_speedshoes)
{
	audio_pause_sound(global.mu);
	audio_play_sound(mu_speedshoes, 10, 0, 0.8, 0, 1.1);
}
if !obj_exe.gotime && room = greenhill && dummyvar
	audio_sound_pitch(mu_greenhill, 1 - (global.seconds * 0.005))
chasemu = !obj_exe.flowery ? mu_chase : mu_flowerman;
if obj_exe.gotime && !audio_is_playing(chasemu)
{
	audio_stop_all()
	global.mu = audio_play_sound(chasemu, 10, true, 0.8)
}