if global.debug
{
	var _webhook = webhook;
	var body = ds_map_create();
	var header = ds_map_create();
	randomize();
	ds_map_add(body, "content", game_project_name + " was closed for more work lolol");
	ds_map_add(body, "avatar_url", "https://cdn.discordapp.com/attachments/1136515442077335643/1360079234701197322/caption.gif?ex=6a8271fe&is=6a81207e&hm=ad05fad70968e356772f9208301f97b32cefbe1b78e76aea26bc692dda1aaf6f");
	ds_map_add(body, "username", "evil game crash robot thang");
	ds_map_add(header, "Content-Type", "application/json");
	http_request(_webhook, "POST", header, json_encode(body));
	ds_map_destroy(body);
	ds_map_destroy(header);
}