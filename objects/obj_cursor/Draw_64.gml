depth = -9999;
if still
	alpha = approach(alpha, 0, 0.1);
else
	alpha = approach(alpha, 1, 0.1);
if mx != mouse_x or my != mouse_y or mouse_check_button(mb_left) or mouse_check_button(mb_right)
{
	still = 0;
	mx = mouse_x;
	my = mouse_y;
	alarm[0] = 60;
}
if os_type != os_android
	draw_sprite_ext(spr_cursor, 0, mouse_x, mouse_y, 1, 1, 0, c_white, alpha);
window_set_cursor(cr_none);
