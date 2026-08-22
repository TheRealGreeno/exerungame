groundx -= obj_tails.pspeed * 0.5;
bg5x = groundx * 0.09;
bg4x = groundx * 0.09;
bg3x = groundx * 0.07;
bg2x = groundx * 0.05;
bg1x = groundx * 0.03;
bg0x = groundx * 0.01;
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
	case youcantrun:
		draw_sprite_ext(bg_youcantrun0, 0, bg0x, 60, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_youcantrun1, 0, bg5x, 60, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_youcantrun3, 0, bg4x, 92, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_youcantrun0, 0, bg3x, 124, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_youcantrun1, 0, bg2x, 156, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_youcantrun3, 0, bg1x, 188, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_youcantrun9, 0, bg0x, 202, 9999, 1, 0, c_white, 1);
		break;
	case hiddenpalace:
		draw_sprite_ext(bg_hiddenpalace3, 0, bg2x, 60, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_hiddenpalace4, 0, bg1x, 76, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_hiddenpalace5, 0, bg0x, 92, 9999, 1, 0, c_white, 1);
		pal_swap_set(palette_hiddenpalace, palselect, 0);
		draw_sprite_ext(bg_hiddenpalace5, 0, bg0x, 92, 9999, 1, 0, c_white, 1);
		shader_reset();
		break;
	case chemplant:
		draw_sprite_ext(bg_chemplant, 0, bg0x, 60, 9999, 1, 0, c_white, 1);
		break;
	case casino:
		draw_sprite_ext(bg_casino0, 0, bg0x, 0, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_casino1, 0, bg1x, 70, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_casino2, 0, bg2x, 135, 9999, 1, 0, c_white, 1);
		pal_swap_set(palette_casino, palselect, 0);
		draw_sprite_ext(bg_casino2, 0, bg2x, 135, 9999, 1, 0, c_white, 1);
		shader_reset();
		break;
	case caves:
		draw_sprite_ext(bg_caves0, 0, bg0x, 0, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_caves1, 0, bg5x, 60, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_caves3, 0, bg4x, 78, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_caves4, 0, bg3x, 85, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_caves5, 0, bg2x, 91, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_caves6, 0, bg3x, 139, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_caves7, 0, bg4x, 152, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_caves8, 0, bg5x, 171, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_caves9, 0, bg1x, 208, 9999, 1, 0, c_white, 1);
		break;
	case marble:
		draw_sprite_ext(bg_marble0, 0, bg0x, 0, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_marble1, 0, bg5x, 60, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_marble2, 0, bg4x, 76, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_marble3, 0, bg3x, 92, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_marble4, 0, bg2x, 108, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_marble5, 0, bg1x, 124, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_marble6, 0, bg2x, 154, 9999, 1, 0, c_white, 1);
		break;
	case flowercastle:
		draw_sprite_ext(bg_flowercastle0, 0, bg0x, 0, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_flowercastle1, 0, bg1x, 136, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_flowercastle2, 0, bg2x, 146, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_flowercastle3, 0, bg3x, 156, 9999, 1, 0, c_white, 1);
		break;
	case palmtreeparadise:
		draw_sprite_ext(bg_palmtreeparadise, 60, bg1x, 0, 9999, 2, 0, c_white, 1);
		break;
	case tower:
		draw_sprite_ext(bg_tower0, 0, bgstillx, 0, 9999, 1, 0, c_white, 1);
		draw_sprite_ext(bg_tower1, 0, bg2x, 0, 9999, 1, 0, c_white, 1);
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
