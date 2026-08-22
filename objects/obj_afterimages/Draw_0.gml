pal_swap_set(palette_afterimages, 1, 0);
if target.tails
	draw_sprite_ext(!target.flight ? spr_tail_still : spr_tailsfly, !target.flight ? -1 : target.tailsflyf, x, y - 20, 1, 1, !target.flight ? target.tailrot : 0, image_blend, image_alpha);
draw_self();
shader_reset();