if instance_exists(obj_tails)
{
	if !obj_tails.dead
	{
		if !gotime
			sprite_index = spr_roll;
		grav = !flowery ? 0.4 : 0.1
		if gotime && y >= 206
			espeed = obj_tails.pspeed;
		if gotime && !soundplayed && flowery
		{
			randomize();
			scr_sfx(choose(snd_flowery_voiceclip_hereicome, snd_flowery_voiceclip_hereicomesanfrandisc, snd_flowery_voiceclip_hereicomesanfrandisco_strong, snd_flowery_voiceclip_hereicomesanfrandisco_weak, snd_flowery_voiceclip_hey_boys, snd_flowery_voiceclip_heytherelittleguy), 0);
			soundplayed = 1;
		}
		if sprite_index != spr_exe_dashprep
		{
			if x < 64
				hsp = espeed * 0.4;
			else
				hsp = espeed * 0.001;
		}
		if x < 64
			x += hsp;
		if gotime
			y += vsp;
		if y <= 206 && gotime
			vsp += grav;
		if sprite_index = spr_exe_dashprep
			hsp = (-obj_tails.pspeed) * 0.5;
		if y > 206
		{
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
					obj_camera.shake = 80;
					if exe = "S"
						instance_create(x, y, obj_FOUNDYOU);
					if jokevoiceline = 1
						scr_sfx(sfx_exejokevoiceline, 0);
				}
				if exe = "S"
				{
					sprite_index = spr_exe_dashprep;
					alarm[3] = 60;
				}
				else
				{
					sprite_index = spr_dash;
					instance_create(x, y, obj_whitefade);
				}
				landed = 1;
			}
		}
		if exe = "S" && sprite_index != spr_exe_dashprep
		{
			if espeed < 10
				sprite_index = spr_exe_walk;
			else
				sprite_index = spr_exe_dash;
		}
		if espeed < 10
			image_speed = espeed * 0.1;
		else
			image_speed = 1.5;
		if global.noiselevel > 4 && alarm[2] <= 0 && !gotime
			alarm[2] = 250;
	}
	else
	{
		sprite_index = spr_defeat;
		image_speed = 1;
	}
}
else
{
	if gotime && y >= 206
		espeed = 30;
	if x < 96
		hsp = espeed * 0.4;
	else
		hsp = espeed * 0.001;
	if x < 96
		x += hsp;
	if gotime
		y += vsp;
	if y <= 206 && gotime
		vsp += grav;
	if y > 206
	{
		sprite_index = spr_dash;
		vsp = 0;
		y = 206;
		if !landed
		{
			scr_sfx(sfx_hardland);
			scr_sfx(sfx_land);
			landed = 1;
		}
	}
	xscale = lerp(xscale, 1, 0.1);
	yscale = lerp(yscale, 1, 0.1);
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
if exe = "F"
	flowery = 1;
else
	flowery = 0;
if exe = "S"
	exenum = 0;
else if exe = "R"
	exenum = 1;
else if exe = "F"
	exenum = 2;
else if exe = "W"
	exenum = 3;
else if exe = "P"
	exenum = 4;
else
	exenum = 5;
if exe != "S"
	palselect = 0;
if room = title
	mask_index = spr_dash;
else
	mask_index = mask_exe;
if textfade && textalpha > 0
	textalpha -= 0.1;
else if !textfade && textalpha < 1
	textalpha += 0.1;