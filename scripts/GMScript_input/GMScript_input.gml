function GMScript_input()
{
	if !instance_exists(obj_touchcontrols)
	{
		keyjump = keyboard_check(vk_space);
		keyjump2 = keyboard_check_pressed(vk_space);
		keydown = keyboard_check(vk_down);
		keydown2 = keyboard_check_pressed(vk_down);
	}
	if keyjump2
		jumpbuffer = 10
	if keydown2
		downbuffer = 10
	if jumpbuffer > 0
		jumpbuffer--
	if downbuffer > 0
		downbuffer--
}