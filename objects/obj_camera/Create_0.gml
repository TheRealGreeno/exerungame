target = obj_tails;
view_enabled = true;
view_enabled[0] = true;
camx = target.x;
camy = target.y;
_x = 0;
_y = 0;
minutes = 0;
seconds = 0;
move = 0;
shake = 0;
alarm[0] = 60;
ini_open("gameData.ini");
global.fullscreen = ini_read_real("settings", "fullscreen", 1);
ini_close();
window_set_fullscreen(global.fullscreen);

if (instance_number(obj_camera) > 1)
    instance_destroy();
