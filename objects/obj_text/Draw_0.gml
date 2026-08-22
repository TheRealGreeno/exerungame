if !Title
{
	draw_set_halign(fa_center);
	draw_set_font(font);
	draw_set_color(color);
	draw_text(x, y, text);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}