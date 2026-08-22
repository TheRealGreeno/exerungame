event_inherited();
repeat irandom_range(5, 10)
{
	with instance_create(x, y, obj_debris)
		sprite_index = spr_cavesdebris;
}