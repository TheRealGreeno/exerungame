function GMScript_tailsnormal()
{
	tails = 0;
	if !dead
	{
		hsp = pspeed * 0.01
		if pspeed < 10
			image_speed = (pspeed * 0.1);
		else
			image_speed = 1;

		if pspeed < 25
		{
			if powerup != 2
				pspeed += !obj_exe.gotime ? 0.01 : 1.5;
			else
				pspeed += !obj_exe.gotime ? 0.1 : 2.5;
		}

		if pspeed < 5
			sprite_index = spr_tails_walk;
		else if pspeed < 10
			sprite_index = spr_tails_dash;
		else
			sprite_index = spr_tails_topspeed;
		if keyjump2 or jumpbuffer > 0
		{
			state = 1;
			scr_sfx(sfx_jump, 0);
			vsp -= 8;
			hsp += 0.2;
			pspeed += 0.2;
		}

		if keydown2 or downbuffer > 0
		{
			state = 2;
			hsp += 0.4;
			pspeed += 0.2;
			scr_sfx(sfx_speedup, 0);
		}
	}
}