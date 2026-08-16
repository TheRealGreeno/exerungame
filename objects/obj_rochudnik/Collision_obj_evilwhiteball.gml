instance_create(other.x, other.y, obj_boom);
instance_destroy(other);
repeat irandom_range(5, 10)
{
	with instance_create(x, y, obj_debris)
		sprite_index = spr_grounddebris_1;
}
hp--;