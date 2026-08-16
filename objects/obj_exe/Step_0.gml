if instance_exists(obj_tails)
{
	if !obj_tails.dead
	{
		if !gotime
			sprite_index = !flowery ? spr_exe_roll : spr_flowery_intro;
		grav = !flowery ? 0.4 : 0.1
		if gotime && y >= 206
			espeed = 25;
		if x < 64
			hsp = espeed * 0.4;
		else
			hsp = espeed * 0.001;
		if x < 192
			x += hsp;
		if gotime
			y += vsp;
		if y <= 206 && gotime
			vsp += grav;
		if y > 206
		{
			sprite_index = !flowery ? spr_exe_dash : spr_flowery_dash;
			vsp = 0;
			y = 206;
			if !landed
			{
				if !flowery
				{
					repeat irandom_range(5, 10)
						instance_create(x, y, obj_debris);
					scr_sfx(sfx_hardland);
					scr_sfx(sfx_land);
					if jokevoiceline = 1
						scr_sfx(sfx_exejokevoiceline, 0);
				}
				instance_create(x, y, obj_whitefade)
				landed = 1;
			}
		}
		if espeed < 10
			image_speed = espeed * 0.1;
		else
			image_speed = 1.5;
		if global.seconds = 100
			gotime = 1;
	}
	else
	{
		sprite_index = !flowery ? spr_exe_intro : spr_flowery_defeat;
		image_speed = 1;
	}
}
else
{
	if gotime && y >= 206
		espeed = 30;
	if x < 64
		hsp = espeed * 0.4;
	else
		hsp = espeed * 0.001;
	if x < 192
		x += hsp;
	if gotime
		y += vsp;
	if y <= 206 && gotime
		vsp += grav;
	if y > 206
	{
		sprite_index = !flowery ? spr_exe_dash : spr_flowery_dash;
		vsp = 0;
		y = 206;
		if !landed
		{
			repeat irandom_range(5, 10)
				instance_create(x, y, obj_debris);
			scr_sfx(sfx_hardland);
			scr_sfx(sfx_land);
			landed = 1;
		}
	}
	if espeed < 10
		image_speed = espeed * 0.1;
	else
		image_speed = 1.5;
}
if keyboard_check_pressed(ord("3")) && global.debug
{
	randomize();
	flowery = irandom_range(-50, 1);
}