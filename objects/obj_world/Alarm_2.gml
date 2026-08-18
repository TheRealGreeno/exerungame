randomize()
if room != labyrinth
{
	with instance_create(1080, 206, obj_deadanimals)
		depth = obj_tails.depth + 1;
}
alarm[2] = irandom_range(1, 100);