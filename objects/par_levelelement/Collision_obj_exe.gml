if object_index = obj_evilwhiteball or object_index = obj_groundpillar
{
	repeat irandom_range(10, 20)
		instance_create(x, y, obj_debris);
}
scr_sfx(sfx_hardland, 0)
instance_destroy();
obj_camera.shake = 20;