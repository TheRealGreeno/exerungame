if jump && point_in_rectangle(mouse_x, mouse_y, x, y, x + (image_xscale * 32), y + (image_yscale * 32))
{
		obj_tails.keyjump2 = mouse_check_button_pressed(mb_left);
		obj_tails.keyjump = mouse_check_button(mb_left);
}
if !jump && point_in_rectangle(mouse_x, mouse_y, x, y, x + (image_xscale * 32), y + (image_yscale * 32))
	obj_tails.keydown2 = mouse_check_button_pressed(mb_left);