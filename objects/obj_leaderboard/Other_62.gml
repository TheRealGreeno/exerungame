if ds_map_find_value(async_load, "id") = request
{
	if ds_map_find_value(async_load, "status") = 0
	{
		var rstr = ds_map_find_value(async_load, "result");
		var result = json_parse(rstr);
	}
}