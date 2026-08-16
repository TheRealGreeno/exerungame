randomize()
if !instance_exists(obj_whitefade)
{
	with instance_create(1080, 206, obj_monitor)
		depth = obj_tails.depth + 1
}
alarm[4] = irandom_range(650 - (obj_tails.pspeed * 10), 850 - (obj_tails.pspeed * 10))