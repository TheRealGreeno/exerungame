ini_open("gameData.ini");
global.fullscreen = ini_read_real("settings", "fullscreen", 1);
ini_close();
window_set_fullscreen(global.fullscreen);
if !global.fullscreen
{
	window_set_size(960, 540);
	window_set_showborder(false);
	window_center();
}
scr_sfx(sfx_sega);