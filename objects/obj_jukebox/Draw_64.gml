angle += 5;
xscale = lerp(xscale, 1, 0.1);
yscale = lerp(yscale, 1, 0.1);
if textfadein && textalpha < 1
	textalpha += 0.1;
else if textalpha > 0
	textalpha -= 0.1;
pal_swap_set(palette_cd, palselect, 0);
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, angle, c_white, 1)
shader_reset();
draw_set_font(fnt_smallestsans);
var c = c_white
draw_text_color(x, y - 42, audio_get_name(global.mu), c, c, c, c, textalpha)