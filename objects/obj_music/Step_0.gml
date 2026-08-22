with obj_tails
	var dis = distance_to_object(obj_exe)
var dummyvar = 0;
if global.mu != noone
{
	if !obj_exe.gotime && global.seconds < 0
	{
		audio_stop_all()
		switch room
		{
			case greenhill:
				global.mu = audio_play_sound(mu_greenhill, 10, true, 0.8, 0, 0.95);
				break;
			case labyrinth:
				global.mu = audio_play_sound(mu_labyrinth, 10, true, 0.8, 0, 0.85);
				break;
			case youcantrun:
				global.mu = audio_play_sound(mu_youcantrun, 10, true, 0.8, 0, 0.6);
				break;
			case hiddenpalace:
				global.mu = audio_play_sound(mu_hiddenpalace, 10, true, 0.8, 0, 0.85);
				break;
			case chemplant:
				global.mu = audio_play_sound(mu_chemplant, 10, true, 0.8, 0, 0.95);
				break;
			case casino:
				global.mu = audio_play_sound(mu_casino, 10, true, 0.8, 0, 0.9);
				break;
			case caves:
				global.mu = audio_play_sound(mu_caves, 10, true, 0.8, 0, 0.85);
				break;
			case marble:
				global.mu = audio_play_sound(mu_marble, 10, true, 0.8, 0, 0.85);
				break;
		}
	}
	if obj_tails.powerup != 1 && audio_is_playing(mu_invincibility)
	{
		audio_stop_sound(mu_invincibility);
		audio_resume_all();
	}
	if obj_tails.powerup = 1 && !audio_is_playing(mu_invincibility)
	{
		audio_pause_sound(global.mu);
		global.pmu = audio_play_sound(mu_invincibility, 10, false, 0.8, 0, 0.95);
	}
	if obj_tails.powerup != 2 && audio_is_playing(mu_speedshoes)
	{
		audio_stop_sound(mu_speedshoes);	
		audio_resume_all();
	}
	if obj_tails.powerup = 2 && !audio_is_playing(mu_speedshoes)
	{
		audio_pause_sound(global.mu);
		global.pmu = audio_play_sound(mu_speedshoes, 10, false, 0.8, 0, 0.95);
	}
	if !obj_exe.gotime && room = greenhill && dummyvar
		audio_sound_pitch(mu_greenhill, 1 - (global.seconds * 0.005))
	switch obj_exe.exe
	{
		case "S":
			chasemu = mu_chase;
			break;
		case "R":
			chasemu = mu_robotnikchase;
			break;
		case "F":
			chasemu = mu_flowerman;
			break;
		case "W":
			chasemu = mu_wariochase;
			break;
		case "P":
			chasemu = mu_pizzatime;
			break;
		case "shawn":
			chasemu = mu_shawn_compressed_mendes_stitches;
			break;
	}
	if obj_exe.gotime && !audio_is_playing(chasemu)
	{
		audio_stop_all()
		global.mu = audio_play_sound(chasemu, 10, true, 0.8, 0, 0.95)
	}
}