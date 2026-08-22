if !obj_shield.active
	draw_sprite(shieldspr, obj_shield.shieldf, obj_shield.x, obj_shield.y)
pal_swap_set(spr_palette, palselect, 0);
tailsflyf++;
if tails
	draw_sprite_ext(!flight ? spr_tail_still : spr_tailsfly, !flight ? -1 : tailsflyf, x, y - 20, 1, 1, !flight ? tailrot : 0, c_white, 1);
draw_self();
shader_reset();