var camw = camera_get_view_width(view_camera[0]);
var camh = camera_get_view_height(view_camera[0]);
camx = lerp(camx, target.x - (camw / 2), 0.5);
camy = lerp(camy, target.y - (camh / 2), 0.5);
camx = clamp(camx, 0, 480);
camy = clamp(camy, 0, room_height - camh);
camera_set_view_pos(view_camera[0], camx  + irandom_range(-shake, shake), camy  + irandom_range(-shake, shake));
camera_set_view_size(view_camera[0], 480, 270);
if shake > 0
	shake *= 0.8;

if (keyboard_check_pressed(vk_f5))
{
    global.fullscreen = !global.fullscreen;
    ini_open("gameData.ini");
    ini_write_real("settings", "fullscreen", global.fullscreen);
    ini_close();
    window_set_fullscreen(global.fullscreen);
}
