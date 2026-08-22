ini_open("gameData.ini");
global.fullscreen = ini_read_real("settings", "fullscreen", 1);
ini_close();
window_set_fullscreen(global.fullscreen);
audio_stop_all();
audio_play_sound(mu_menu, 10, 1, 0.8, 0, 0.95);