x += hsp;
y += vsp;
vsp += grav;
hsp = (-obj_tails.pspeed) * 0.8;
if image_index = 1
	image_speed = 0.1;
else
	image_speed = 0;
if vsp > 0
	image_index = 0;
if y >= 206
{
	vsp = -vsp;
	image_index = 1;
}