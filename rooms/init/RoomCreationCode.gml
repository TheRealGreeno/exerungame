ini_open("gameData.ini");
global.fullscreen = ini_read_real("settings", "fullscreen", 1);
ini_close();
window_set_fullscreen(global.fullscreen);
scr_sfx(sfx_sega);