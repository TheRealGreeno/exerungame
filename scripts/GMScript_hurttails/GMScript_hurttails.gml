function GMScript_hurttails()
{
	state = 3;
	vsp = -8;
	hsp = -2;
	scr_sfx(sfx_hurt);
	global.combo = 0;
	global.combotime = 0;
	if shield = 0
	{
		if global.lifes > 1
			global.lifes--;
		else
		{
			if !dead
			{
				dead = 1;
				with instance_create(x, y, obj_deadbody)
					sprite_index = other.spr_dead;
				alarm[0] = 100;
				global.lifes = 0;
				pspeed = 0;
				hsp = 0;
				ini_open("gameData.ini");
				if ini_read_real("game", "highscore", 0) < global.gamescore
					ini_write_real("game", "highscore", global.gamescore);
				ini_close();
			}	
		}
	}
	else
		shield = 0;
	if pspeed > 6
		pspeed -= 5;
	else
		pspeed = 1;
}