if gonermaker
{
	var c = c_black
	draw_rectangle_color(120, 105, 360, 165, c, c, c, c, 0);
	draw_set_font(fnt_smallsans);
	draw_text(240, 135, global.name)
}
if room = shop
{
	draw_rectangle_color(0, 0, 480, 60, c_black, c_black, c_black, c_black, 0);
	draw_set_font(fnt_bigsans);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_text(240, 0, "SHOP.");
	draw_set_font(fnt_smallsans);
	var highscoreadd = string(global.gamescore - global.highscore);
	draw_text(240, 40,"RINGS:" + string(global.ring));
	draw_set_color(c_white);
}