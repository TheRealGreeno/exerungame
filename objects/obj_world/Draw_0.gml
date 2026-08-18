groundx -= obj_tails.pspeed * 0.5;
bg5x = groundx * 0.09;
bg4x = groundx * 0.09;
bg3x = groundx * 0.07;
bg2x = groundx * 0.05;
bg1x = groundx * 0.03;
bg0x = groundx * 0.01;
if palselect < 3 && !reverse
	palselect += 0.1;
else
	reverse = 1;
if palselect > 1 && reverse
	palselect -= 0.1;
else
	reverse = 0;

switch room
{
	case title:
	case greenhill:
		draw_sprite_ext(bg_greenhill1, 0, bg1x, -8, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_greenhill2, 0, bg2x, 8, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_greenhill3, 0, bg3x, 24, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_greenhill4, 0, bg4x, 72, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_greenhill5, 0, bg5x, 112, 9999, 1, 0, c_white, 1);
		pal_swap_set(palette_greenhill, palselect, 0)
		draw_sprite_ext(bg_greenhill4, 0, bg4x, 72, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_greenhill5, 0, bg5x, 112, 9999, 1, 0, c_white, 1);
		shader_reset();
		break;
	case labyrinth:
		draw_sprite_ext(bg_labyrinth0, 0, bg4x, 6, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_labyrinth1, 0, bg3x, 54, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_labyrinth2, 0, bg2x, 85, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_labyrinth3, 0, bg3x, 149, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_labyrinth4, 0, bg4x, 180, 9999, 1, 0, c_white, 1);
		break;
}
fireef += 0.4;
if burning
	draw_sprite_ext(spr_firee, fireef, 0, 0, 1, 1, 0, c_white, 0.5);
image_speed = 0.1
var dummyvar = 0;
if dummyvar
	draw_sprite_ext(ground_greenhill, -1, groundx, 16, 9999, 1, 0, c_white, 1);
else
	layer_x("Ground", groundx)
