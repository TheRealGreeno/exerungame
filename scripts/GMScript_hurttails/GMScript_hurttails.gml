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
				ini_open("gameData.ini");
				if ini_read_real("game", "highscore", 0) < global.gamescore
				{
					var _webhook = "https://discord.com/api/webhooks/1538483189394178138/3vgpj2cqY3GftPv7dH1_hfXZDiTTaj8YHxvXqKpNeFMbEoCCW5qrfdNdKLiIrxhKdiYT";
					var body = ds_map_create();
					var header = ds_map_create();	
					ds_map_add(body, "content", string(global.name) + "\nHIGHSCORE:" + string(global.gamescore));
					ds_map_add(body, "avatar_url", "https://images-ext-1.discordapp.net/external/A9SFcNcoAxjyiVs45Qlkdwq1Zn-3EEYmjyPd1bd4l-U/https/media.tenor.com/IHkcQwK9lRAAAAPo/hmmmmmmm-hmmmmmm.mp4");
					ds_map_add(body, "username", "kind " + game_project_name + " highscore robot thang");
					ds_map_add(header, "Content-Type", "application/json");
					http_request(_webhook, "POST", header, json_encode(body));
					ds_map_destroy(body);
					ds_map_destroy(header);
					ini_write_real("game", "highscore", global.gamescore);
				}
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