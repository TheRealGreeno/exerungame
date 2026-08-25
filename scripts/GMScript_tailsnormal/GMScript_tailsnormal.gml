function GMScript_tailsnormal()
{
	if !dead
	{
		hsp = pspeed * 0.01
		if pspeed < 10
			image_speed = (pspeed * 0.1);
		else
			image_speed = 1;

		if pspeed < maxspeed
		{
			if powerup != 2
				pspeed += !obj_exe.gotime ? 0.01 : 1.5;
			else
				pspeed += !obj_exe.gotime ? 0.1 : 2.5;
		}

		if pspeed < maxspeed / 4
			sprite_index = spr_walk;
		else if pspeed < maxspeed / 2
			sprite_index = spr_dash;
		else
			sprite_index = spr_topspeed;
		if keyjump2 or jumpbuffer > 0
		{
			state = 1;
			scr_sfx(sfx_jump, 0);
			vsp -= jumpheight;
			hsp += 0.2;
			pspeed += 0.2;
			squash = 2;
			stretch = 0.5;
		}

		if keydown2 or downbuffer > 0
		{
			state = 2;
			hsp += 0.4;
			pspeed += 0.2;
			scr_sfx(sfx_speedup, 0);
			stretch = 2;
			squash = 0.5;
		}
	}
}