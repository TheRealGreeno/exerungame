randomize()
if !instance_exists(obj_whitefade)
{
	with instance_create(1080, irandom_range(128, 206), enemyarray[irandom((array_length(enemyarray) - 1))])
		depth = obj_tails.depth + 1
}
alarm[0] = irandom_range(50, 200)