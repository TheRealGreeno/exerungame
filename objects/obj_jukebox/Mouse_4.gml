palselect = irandom(12);
if music < 17
	music++;
else
	music = 0;
xscale = 2;
yscale = 0.5;
textfadein = 1;
alarm[0] = 60;
audio_stop_all();
switch music
{
	case 0:
		global.mu = audio_play_sound(mu_menu, 10, true, 0.8, 0, 0.95);
		break;
	case 1:
		global.mu = audio_play_sound(mu_shop, 10, true, 0.8, 0, 0.95);
		break;
	case 2:
		global.mu = audio_play_sound(mu_greenhill, 10, true, 0.8, 0, 0.95);
		break;
	case 3:
		global.mu = audio_play_sound(mu_labyrinth, 10, true, 0.8, 0, 0.85);
		break;
	case 4:
		global.mu = audio_play_sound(mu_youcantrun, 10, true, 0.8, 0, 0.6);
		break;
	case 5:
		global.mu = audio_play_sound(mu_hiddenpalace, 10, true, 0.8, 0, 0.85);
		break;
	case 6:
		global.mu = audio_play_sound(mu_chemplant, 10, true, 0.8, 0, 0.95);
		break;
	case 7:
		global.mu = audio_play_sound(mu_casino, 10, true, 0.8, 0, 0.9);
		break;
	case 8:
		global.mu = audio_play_sound(mu_caves, 10, true, 0.8, 0, 0.85);
		break;
	case 9:
		global.mu = audio_play_sound(mu_marble, 10, true, 0.8, 0, 0.85);
		break;
	case 10:
		global.mu = audio_play_sound(mu_invincibility, 10, true, 0.8, 0, 0.95);
		break;
	case 11:
		global.mu = audio_play_sound(mu_speedshoes, 10, true, 0.8, 0, 0.95);
		break;
	case 12:
		global.mu = audio_play_sound(mu_chase, 10, true, 0.8, 0, 0.95);
		break;
	case 13:
		global.mu = audio_play_sound(mu_robotnikchase, 10, true, 0.8, 0, 0.95);
		break;
	case 14:
		global.mu = audio_play_sound(mu_flowerman, 10, true, 0.8, 0, 0.95);
		break;
	case 15:
		global.mu = audio_play_sound(mu_wariochase, 10, true, 0.8, 0, 0.95);
		break;
	case 16:
		global.mu = audio_play_sound(mu_pizzatime, 10, true, 0.8, 0, 0.95);
		break;
	case 17:
		global.mu = audio_play_sound(mu_shawn_compressed_mendes_stitches, 10, true, 0.8, 0, 0.95);
		break;
}