if global.name = "" or keyboard_check_pressed(ord("N"))
	gonermaker = 1;
if gonermaker
{
	if string_length(keyboard_string) < 12
		global.name = keyboard_string;
	else
		keyboard_string = global.name;
	if os_type = os_android
		keyboard_virtual_show(kbv_type_default, kbv_returnkey_done, kbv_autocapitalize_none, false);
	if keyboard_check_pressed(vk_enter) && string_length(keyboard_string) > 0
	{
		ini_open("gameData.ini");
		ini_write_string("playerinfo", "name", global.name);
		ini_close();
		gonermaker = 0;
	}
}