draw_rectangle_color(0, 0, 480, 60, c_black, c_black, c_black, c_black, 0);
draw_set_font(fnt_bigsans);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var lifeicon = 0;
switch obj_tails.char
{
	case "T":
		lifeicon = 0;
		break;
	case "K":
		lifeicon = 1;
		break;
	case "S":
		lifeicon = 2;
		break;
}
draw_text(240, 0, "SCORE:" + string(global.gamescore));
draw_set_font(fnt_smallsans);
var highscoreadd = string(global.gamescore - global.highscore);
draw_text(240, 40, "HIGHSCORE:" + string(global.highscore) + (global.gamescore > global.highscore ? (" + " + highscoreadd) : ""));
draw_sprite_ext(spr_gamble_icons_dupe, lifeicon, 40, 10, 2, 2, 0, c_white, 1);
draw_text(50, 40, "HEALTH:" + string(global.lifes));
draw_text(400, 0, "RINGS:" + string(global.ring));
if global.combo > 0
	draw_text(400, 40, "COMBO:" + string(global.combo));
draw_text(400, 20, global.seconds < 100 ? "TIME LEFT:" + string(100 - global.seconds) : "RUNRUNRUN");