if image_index != 1
{
	image_index = 1;
	instance_create(x, y - 12, obj_boom_dupe);
	array_set(global.unlockedpalettes[slot], chartounlockto, paltounlock);
	ini_open("gameData.ini");
	ini_write_string("playerinfo", "unlockedpalettes", global.unlockedpalettes);
	ini_close();
	alarm[0] = 200;
}