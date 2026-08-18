var padid = async_load[? "pad_index"];
switch async_load[? "event_type"]
{
	case "gamepad discovered":
		global.gamepad = padid;
		gamepad_set_axis_deadzone(global.gamepad, 0.2);
		break;
	case "gamepad lost":
		if global.gamepad = padid
			global.gamepad = noone;
		break;
}