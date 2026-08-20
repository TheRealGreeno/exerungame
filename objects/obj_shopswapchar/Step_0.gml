image_index = obj_shop.char;
if point_in_rectangle(mouse_x, mouse_y, x, y, x + (image_xscale * 16), y + (image_yscale * 16))
{
	if mouse_check_button_pressed(mb_left)
	{
		if obj_shop.char < 3
			obj_shop.char++;
		else
			obj_shop.char = 0;
		scr_sfx(sfx_halfscore, 0);
	}
	image_xscale = lerp(image_xscale, 2, 0.1);
	image_yscale = lerp(image_yscale, 2, 0.1);
}
else
{
	image_xscale = lerp(image_xscale, 1, 0.1);
	image_yscale = lerp(image_yscale, 1, 0.1);
}