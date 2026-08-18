randomize();
if dupecheck < 14
	dupecheck++;
if global.unlockedpalettes[dupecheck, chartounlockto] = paltounlock
	paltounlock = irandom_range(1, 14);
if global.unlockedpalettes[slot, chartounlockto] != 0
{
	if slot < 14
		slot++;
	else
		instance_destroy();
}
image_index = button;
chartounlockto = button;
if button = 0
	spr_palette = palette_tails;
else if button = 1
	spr_palette = palette_knuckles;
else if button = 2
	spr_palette = palette_sonic;
else
	spr_palette = palette_exe;
if buffer > 0
{
	image_blend = c_gray;
	buffer--;
}
else
	image_blend = c_white;
if point_in_rectangle(mouse_x, mouse_y, x, y, x + (image_xscale * 16), y + (image_yscale * 16))
{
	if mouse_check_button_pressed(mb_left)
	{
		if global.ring >= price && buffer <= 0
		{
			switch button
			{
				case 0:
					array_set(global.unlockedpalettes[slot], chartounlockto, paltounlock);
					ini_open("gameData.ini");
					ini_write_string("playerinfo", "unlockedpalettes", global.unlockedpalettes);
					ini_close();
					break;
				case 1:
					array_set(global.unlockedpalettes[slot], chartounlockto, paltounlock);
					ini_open("gameData.ini");
					ini_write_string("playerinfo", "unlockedpalettes", global.unlockedpalettes);
					ini_close();
					break;
				case 2:
					array_set(global.unlockedpalettes[slot], chartounlockto, paltounlock);
					ini_open("gameData.ini");
					ini_write_string("playerinfo", "unlockedpalettes", global.unlockedpalettes);
					ini_close();
					break;
				case 3:
					array_set(global.unlockedpalettes[slot], chartounlockto, paltounlock);
					ini_open("gameData.ini");
					ini_write_string("playerinfo", "unlockedpalettes", global.unlockedpalettes);
					ini_close();
					break;
			}
			scr_sfx(sfx_halfscore, 0);
			scr_sfx(sfx_ring, 0);
			global.ring -= price
			ini_open("gameData.ini");
			ini_write_real("game", "ring", global.ring);
			ini_close();
			buffer = 200;
			repeat irandom_range(10, 20)
				instance_create(x, y, obj_debris_dupe)
			paltounlock = irandom_range(1, 14);
		}
		else
			scr_sfx(sfx_hurt, 0)
	}
	showprice = 1;
	depth = -99
	image_xscale = lerp(image_xscale, 4, 0.1);
	image_yscale = lerp(image_yscale, 4, 0.1);
}
else
{
	showprice = 0;
	depth = 0
	image_xscale = lerp(image_xscale, 2, 0.1);
	image_yscale = lerp(image_yscale, 2, 0.1);
}
if showprice && alpha < 1
	alpha += 0.1
else if alpha > 0
	alpha -= 0.1