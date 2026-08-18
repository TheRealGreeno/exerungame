randomize()
if !instance_exists(obj_whitefade)
{
	with instance_create(1080, irandom_range(128, 206), enemyarray[irandom((array_length(enemyarray) - 1))])
		depth = obj_tails.depth + 1
	for (var i=1;i<5;i++)
		instance_create(1080 - (i * 16), 196, obj_ring);
}
alarm[0] = irandom_range(50, 200)