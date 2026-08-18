if point_in_rectangle(mouse_x, mouse_y, x, y, x + (image_xscale * 96), y + (image_yscale * 32))
{
	if  mouse_check_button_pressed(mb_left)
	{
			switch button
			{
				case 0:
					if !instance_exists(obj_fadeout)
						instance_create(x, y, obj_fadeout);
					break;
				case 1:
					obj_world_dupe.gonermaker = 1;
					break;
				case 2:
					if !instance_exists(obj_fadeout)
					{
						with instance_create(x, y, obj_fadeout)
							roomgo = shop;
					}
					break;
				case 3:
					game_end();
					break;
			}
		
		scr_sfx(sfx_halfscore, 0)
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