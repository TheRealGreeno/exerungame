randomize()
if !instance_exists(obj_whitefade)
{
	with instance_create(1080, irandom_range(128, 206), obstaclearray[irandom((array_length(obstaclearray) - 1))])
		depth = obj_tails.depth + 1
}
alarm[3] = irandom_range(150 - (obj_tails.pspeed * 2), 250 - (obj_tails.pspeed * 2))