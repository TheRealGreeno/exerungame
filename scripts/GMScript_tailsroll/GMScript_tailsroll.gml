function GMScript_tailsroll()
{
	sprite_index = spr_roll
	if pspeed > 2
	{
		pspeed -= 0.01;
		hsp -= 0.01;
	}
	if input.jump2
	{
		state = 1;
		scr_sfx(sfx_jump, 0);
		vsp -= jumpheight;
		squash = 2;
		stretch = 0.5;
	}
}