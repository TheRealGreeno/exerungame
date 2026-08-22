draw_rectangle_color(0, 0, 480, 60, c_black, c_black, c_black, c_black, 0);
draw_set_font(fnt_bigsans);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
var lifeicon = 0;
var dummyvar = 0;
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
pal_swap_set(obj_tails.spr_palette, obj_tails.palselect, 0);
draw_sprite_ext(spr_gamble_icons_dupe, lifeicon, 40, 10, 2, 2, 0, c_white, 1);
shader_reset();
var overheal = global.lifes - 10;
if dummyvar
	draw_text(60, 40, "HEALTH:" + (global.lifes < 10 ? string(global.lifes) : "10") + (global.lifes > 10 ? ("+" + string(overheal)) : ""));
draw_text(400, 0, "RINGS:" + string(global.ring));
if global.combo > 0
	draw_text(400, (obj_tails.powerup ? 40 : 20), "COMBO:" + string(global.combo));
if obj_tails.powerup != 0
	draw_text(400, 20, "TIME LEFT:" + string(round(obj_tails.alarm[1] * 0.01)))
draw_sprite(spr_noiseind, !obj_exe.gotime ? global.noiselevel : 5, 60, 45);