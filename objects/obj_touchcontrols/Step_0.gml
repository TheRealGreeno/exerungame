if jump && point_in_rectangle(mouse_x, mouse_y, x, y, x + (image_xscale * 32), y + (image_yscale * 32))
{
	if mouse_check_button_pressed(mb_left)
		obj_tails.keyjump2 = 1;
	if mouse_check_button(mb_left)
		obj_tails.keyjump = 1;
	else
	{
		obj_tails.keyjump2 = 0;
		obj_tails.keyjump = 0;
	}
}
if mouse_check_button_pressed(mb_left) && !jump && point_in_rectangle(mouse_x, mouse_y, x, y, x + (image_xscale * 32), y + (image_yscale * 32))
	obj_tails.keydown2 = 1;
else
	obj_tails.keydown2 = 0;