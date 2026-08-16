repeat irandom_range(5, 10)
{
	with instance_create(x, y, obj_debris)
	{
		sprite_index = spr_bigrockdebris;
		image_speed = 0;
		image_index = irandom(1);
	}
}
scr_sfx(sfx_hardland, 0)