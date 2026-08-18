function GMScript_tailshurt()
{
	sprite_index = spr_hurt;
	image_speed = 1;
	grav = 0.4;
	flight = 0;
	flightburst = 0;
	dropdash = 0;
	glide = 0;
	glideslam = 0;
	if y > 206
	{
		state = 0;
		y = 206;
	}
}