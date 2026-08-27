colors[0] = clamp(colors[0], 0, 255);
colors[1] = clamp(colors[1], 0, 255);
colors[2] = clamp(colors[2], 0, 255);
fadecolor = make_color_rgb(colors[0], colors[1], colors[2]);
if !fadein
{
	if colors[prog] < 255
		colors[prog] += 40;
	else if prog < 2
		prog++;
	else
	{
		if roomgo = undefined
			room_goto_next();
		else
			room_goto(roomgo);
		fadein = 1;
	}
}
else if fadein
{
	if colors[prog] > 0
		colors[prog] -= 40;
	else if prog > 0
		prog--;
	else
		instance_destroy();
}