pal_swap_set(spr_palette, palselect, 0);
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, 0, c_white, textalpha);
shader_reset();
draw_set_font(fnt_smallestsans)
draw_text(240, 80, os_type != os_android ? "left click to change characters\nright click to change skins" : "tap to change characters swipe to enable palette mode\nand then tap to change skins")
draw_set_alpha(alpha);
draw_set_alpha(textalpha);
draw_text(x, y - 60, string(charname[charnum]) + "\n" + string(palettename[palselect, charnum]));
draw_set_alpha(1);