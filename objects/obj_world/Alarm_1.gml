global.gamescore += round(obj_tails.pspeed);
ini_open("gameData.ini")
if ini_read_real("game", "highscore", 0) < global.gamescore
{
	ini_write_real("game", "highscore", global.gamescore);
}
ini_close()
alarm[1] = 30;