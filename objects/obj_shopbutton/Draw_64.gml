var _xscale = image_xscale - 2;
var _yscale = image_yscale - 2;
var c = c_black;
draw_set_font(fnt_smallsans);
if button > 1
	draw_text_color(x + 15, y - (20 * (image_xscale - 1)), "RANDOM " + string(name[button]) + " SKIN\n" + "PRICE:" + string(price), c, c, c, c, alpha);
else
	draw_text_color(x + 15, y + (16 * (image_xscale - 1)), "RANDOM " + string(name[button]) + " SKIN\n" + "PRICE:" + string(price), c, c, c, c, alpha);
pal_swap_set(spr_palette, palselect, 0);
draw_sprite_ext(sprite_index, image_index, x - (_xscale * 8), y - (_yscale * 8), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
shader_reset();