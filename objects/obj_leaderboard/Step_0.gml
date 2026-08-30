if (keyboard_check_pressed(vk_f5))
{
    global.fullscreen = !global.fullscreen;
    ini_open("gameData.ini");
    ini_write_real("settings", "fullscreen", global.fullscreen);
    ini_close();
    window_set_fullscreen(global.fullscreen);
	if !global.fullscreen
	{
		window_set_size(960, 540);
		window_set_showborder(false);
		window_center();
	}
}
