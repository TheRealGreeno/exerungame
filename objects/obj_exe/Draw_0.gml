if exe != "shawn"
{
	pal_swap_set(palette_exe, palselect, 0);
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, 0, c_white, alpha);
	shader_reset();
}
else
	draw_sprite_ext(spr_shawnmendes, 0, x, y, xscale, yscale, 0, c_white, alpha);