function GMScript_hurttails()
{
	state = 3;
	vsp = -8;
	hsp = -2;
	scr_sfx(sfx_hurt);
	if shield = 0
	{
		if global.lifes > 1
			global.lifes--;
		else
		{
			if !dead
			{
				dead = 1;
				instance_create(x, y, obj_deadbody);
				alarm[0] = 100;
				global.lifes = 0;
				pspeed = 0;
				hsp = 0;
				if ini_read_real("game", "highscore", 0) < global.gamescore
				{
					ini_write_real("game", "highscore", global.gamescore);
					with obj_leaderboard
					{
						var apikey = "$2a$10$VPGlCC/8S9gNVli2LlPC3.wJdSJfqKzgjyJgIUtMM/iiSAUXxkxL.";
						var bin_id = "6a814d67f5f4af5e291be1fb";
						var url = "https://api.jsonbin.io/v3/b/"
						var body = ds_map_create();
						var header = ds_map_create();
						ds_map_add(body, "content", global.name + ":" + string(global.gamescore) + "\n");
						ds_map_add(header, "Content-Type", "application/json");
						ds_map_add(header, "X-Access-Key", apikey);
						array_push(array, {
							username: global.name,
							highscore: global.highscore
						});
						var _data = json_stringify(array);
						http_request(url + bin_id, "DELETE", header, _data);
						request = http_request(url + bin_id, "PUT", header, _data);
						ds_map_destroy(body);
						ds_map_destroy(header);
					}
				}
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