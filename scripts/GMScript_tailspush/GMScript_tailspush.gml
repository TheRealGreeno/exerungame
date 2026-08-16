function GMScript_tailspush()
{
	sprite_index = spr_tails_push;
	image_speed = 1;
	tails = 1;
	x -= (pspeed * 0.5);
	hsp = 0;
	pspeed = 2;
	if keyjump2
	{
		state = 1;
		vsp -= 8;
	}

}