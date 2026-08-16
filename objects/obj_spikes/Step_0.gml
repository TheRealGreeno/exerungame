x += hsp;
y += vsp;
if y <= 206
	vsp += grav;
else
{
	y = 206;
	vsp = 0;
}
if distance_to_object(obj_tails) < 50 && y >= 206
	vsp -= 8;