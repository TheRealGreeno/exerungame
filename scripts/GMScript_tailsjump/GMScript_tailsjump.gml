function GMScript_tailsjump()
{
	sprite_index = spr_roll;
	if char = "S" && keyjump2 && !shield && !dropdash
	{
		dropdash = 1;
		scr_sfx(sfx_dropdashcharge, 0);
		sprite_index = spr_sonic_dropdash;
	}
	if dropdash
		sprite_index = spr_sonic_dropdash;
	if char = "T" && keyjump2 && !shield && flightburst > 0
	{
		vsp = -2;
		flight = 1;
		grav = 0.05;
		pspeed += 0.2;
		hsp += 0.1;
		flightburst--
	}
	if flight
	{
		sprite_index = flightburst > 0 ? spr_tails_flight : spr_tails_flighttired;
		if !audio_is_playing(sfx_tailsfly) && !audio_is_playing(sfx_tailstiredfly)
			scr_sfx(flightburst > 0 ? sfx_tailsfly : sfx_tailstiredfly, 0);
		if keydown2
		{
			flight = 0;
			grav = 0.4;
		}
	}
	if char = "K" && keyjump2 && !shield && !glide
	{
		glide = 1;
		image_speed = 0;
		image_index = 0;
	}
	if glide
	{
		sprite_index = spr_knuckles_glide;
		if pspeed < maxspeed
			pspeed += 0.4;
		vsp = 0.2;
		if keydown2
		{
			glide = 0;
			image_speed = 1;
			glideslam = 1;
			vsp = 8;
		}
	}
	if shield = 1 && !bubbled && keyjump2
	{
		vsp = 8;
		bubbled = 1;
	}
	if shield = 2 && !thundered && keyjump2
	{
		vsp = -6;
		thundered = 1;
		scr_sfx(sfx_thundershielduse, 0);
		repeat irandom_range(5, 10)
			instance_create(obj_shield.x + irandom_range(-10, 10), obj_shield.y + irandom_range(-10, 10), obj_sparks);
		obj_shield.active = 1;
	}
	if shield = 3 && !flamed && keyjump2
	{
		hsp += 0.4;
		pspeed += 4;
		flamed = 1;
		scr_sfx(sfx_flameshielduse, 0);
		obj_shield.active = 1;
	}
	if y > 206
	{
		if !bubbled
		{
			thundered = 0;
			flamed = 0;
			flight = 0;
			flightburst = 3;
			grav = 0.4;
			state = 0;
			y = 206;
			if glide
			{
				glide = 0;
				image_speed = 1;
			}
			if glideslam
			{
				repeat irandom_range(10, 20)
					instance_create(x, y, obj_debris)
				scr_sfx(sfx_hardland)
				scr_sfx(sfx_land)
				obj_camera.shake = 20;
				glideslam = 0;
			}
			if dropdash
			{
				state = 2;
				hsp += 0.4;
				if pspeed < maxspeed - 4
					pspeed += 4;
				dropdash = 0;
				scr_sfx(sfx_speedup, 0);
			}
		}
		else
		{
			vsp -= 10;
			obj_shield.active = 1;
			obj_shield.activef = 0;
			bubbled = 0;
			scr_sfx(sfx_bubbleshielduse, 0);
		}
	}
}