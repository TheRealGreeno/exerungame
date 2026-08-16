if !obj_shield.active
	draw_sprite(shieldspr, obj_shield.shieldf, x - 2, y + 10)
pal_swap_set(palette_tails, palselect, 0)
if tails
	draw_sprite_ext(spr_tail_still, -1, x, y - 20, 1, 1, tailrot, c_white, 1)
draw_self()
shader_reset()