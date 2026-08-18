pal_swap_set(spr_palette, paltounlock, 0)
draw_sprite_ext(spr_gamble_icons, chartounlockto, x, (y - (13 * image_yscale)) + iconvsp, image_xscale, image_yscale, 0, c_white, 1);
shader_reset();
if image_index != 1
	draw_sprite_ext(spr_gamble_icons, cycle, x, y - (13 * image_yscale), image_xscale, image_yscale, 0, c_white, 1)
draw_self();
