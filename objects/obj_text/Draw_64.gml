if Title
{
	draw_rectangle_color(0, 0, 480, 60, c_black, c_black, c_black, c_black, 0);
	draw_set_font(fnt_bigsans);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_red);
	draw_text(240, 0, "TAILS' ETERNAL TORMENT");
	draw_set_font(fnt_smallsans);
	var highscoreadd = string(global.gamescore - global.highscore);
	draw_text(360, 40, "HIGHSCORE:" + string(global.highscore) + (global.gamescore > global.highscore ? (" + " + highscoreadd) : ""));
	draw_text(140, 40, "RINGS:" + string(global.ring));
	draw_set_color(c_white);
}