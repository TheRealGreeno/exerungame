var _xscale = image_xscale - 1
var _yscale = image_yscale - 1
var c = image_blend;
draw_sprite_ext(sprite_index, image_index, x - (_xscale * 48), y - (_yscale * 16), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_set_font(fnt_smallsans);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed_color(x + 48, y + 16, "BUY", xscale, yscale, 0, c, c, c, c, 1);
