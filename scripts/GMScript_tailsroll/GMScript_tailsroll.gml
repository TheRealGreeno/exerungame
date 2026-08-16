function GMScript_tailsroll()
{
	sprite_index = spr_tails_roll
	tails = 1;
	if pspeed > 2
	{
		pspeed -= 0.01;
		hsp -= 0.01;
	}
	if keyjump2
	{
		state = 1;
		scr_sfx(sfx_jump, 0);
		vsp -= 8;
	}
}