if exe != "shawn"
{
	pal_swap_set(palette_exe, palselect, 0);
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, 0, c_white, textalpha);
	shader_reset();
}
else
	draw_sprite_ext(spr_shawnmendes, 0, x, y, xscale, yscale, 0, c_white, textalpha);
if room = title
{
	draw_set_font(fnt_smallestsans)
	draw_set_alpha(textalpha);
	draw_text(x, y - 60, string(exename[exenum]) + "\n" + (exe = "S" ? string(palettename[palselect]) : ""));
	draw_set_alpha(1);
}