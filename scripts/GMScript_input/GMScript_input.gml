function GMScript_input()
{
	input = 
	{
		jump : (!instance_exists(obj_touchcontrols) ? keyboard_check(vk_space) : obj_touchcontrols.jump1),
		jump2 : (!instance_exists(obj_touchcontrols) ? keyboard_check_pressed(vk_space) : obj_touchcontrols.jump2),
		down : (!instance_exists(obj_touchcontrols) ? keyboard_check(vk_down) : obj_touchcontrols.down1),
		down2 : (!instance_exists(obj_touchcontrols) ? keyboard_check_pressed(vk_down) : obj_touchcontrols.down2)
	}
	if input.jump2
		jumpbuffer = 10
	if input.down2
		downbuffer = 10
	if jumpbuffer > 0
		jumpbuffer--
	if downbuffer > 0
		downbuffer--
}