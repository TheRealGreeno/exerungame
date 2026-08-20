if point_in_rectangle(mouse_x, mouse_y, x, y, x + (image_xscale * 16), y + (image_yscale * 16))
{
	if mouse_check_button_pressed(mb_left)
	{
		if (obj_shop.palselect > 1 && createxscale = 1) or (obj_shop.palselect < 14 && createxscale = -1)
			obj_shop.palselect -= createxscale;
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