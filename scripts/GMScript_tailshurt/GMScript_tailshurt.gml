function GMScript_tailshurt()
{
	sprite_index = spr_tails_hurt;
	image_speed = 1;
	tails = 0;
	if y > 206
	{
		state = 0;
		y = 206;
	}
}