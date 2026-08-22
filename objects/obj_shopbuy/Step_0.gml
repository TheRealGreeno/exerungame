if global.unlockedpalettes[slot, obj_shop.char] != 0
{
	if slot < 14
		slot++;
}
if array_contains(obj_shop.purchased[obj_shop.palselect], obj_shop.palselect, obj_shop.char, 1) or global.ring < obj_shop.pricearray[obj_shop.palselect]
	disabled = 1;
else
	disabled = 0;
image_blend = !disabled ? c_white : c_gray;
if point_in_rectangle(mouse_x, mouse_y, x, y, x + (image_xscale * 96), y + (image_yscale * 32))
{
	if  mouse_check_button_pressed(mb_left)
	{
		if !disabled
		{
			array_set(global.unlockedpalettes[slot], obj_shop.char, obj_shop.palselect);
			array_set(obj_shop.purchased[obj_shop.palselect], obj_shop.char, obj_shop.palselect);
			ini_open("gameData.ini");	
			ini_write_string("playerinfo", "unlockedpalettes", global.unlockedpalettes);	
			ini_write_string("shopinfo", "purchased", obj_shop.purchased);
			ini_close();
			scr_sfx(sfx_ringspent, 0);
			global.ring -= obj_shop.pricearray[obj_shop.palselect];
				ini_open("gameData.ini");
			ini_write_real("game", "ring", global.ring);
			ini_close();
			repeat irandom_range(10, 20)
				instance_create(x + 48, y + 16, obj_debris_dupe);
			scr_sfx(sfx_ringspent, 1);
		}
		else
			scr_sfx(sfx_hurt, 0);
	}
	image_xscale = lerp(image_xscale, 2, 0.1);
	image_yscale = lerp(image_yscale, 2, 0.1);
	xscale = lerp(xscale, 2, 0.1);
	yscale = lerp(yscale, 2, 0.1);
}
	image_xscale = lerp(image_xscale, 1, 0.1);
	image_yscale = lerp(image_yscale, 1, 0.1);
	xscale = lerp(xscale, 1, 0.1);
	yscale = lerp(yscale, 1, 0.1);