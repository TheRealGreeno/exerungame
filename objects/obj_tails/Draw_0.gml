if !obj_shield.active
	draw_sprite_ext(shieldspr, obj_shield.shieldf, obj_shield.x, obj_shield.y, obj_shield.image_xscale, obj_shield.image_yscale, 0, c_white, image_alpha)
pal_swap_set(spr_palette, palselect, 0);
tailsflyf++;
if tails
	draw_sprite_ext(!flight ? spr_tail_still : spr_tailsfly, !flight ? -1 : tailsflyf, x, y - 20, xscale, yscale, !flight ? tailrot : 0, c_white, 1);
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, 0, c_white, image_alpha);
shader_reset();