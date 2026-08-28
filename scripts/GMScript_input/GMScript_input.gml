function GMScript_input()
{
	input = 
	{
		jump : keyboard_check(vk_space) or obj_touchcontrols.jump1,
		jump2 : keyboard_check_pressed(vk_space) or obj_touchcontrols.jump2,
		down : keyboard_check(vk_down) or obj_touchcontrols.down1,
		down2 : keyboard_check_pressed(vk_down) or obj_touchcontrols.down2
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