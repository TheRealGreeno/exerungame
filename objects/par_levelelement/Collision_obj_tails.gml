if other.powerup = 1 or other.flamed
{
	if object_index = obj_evilwhiteball or object_index = obj_groundpillar
	{
		repeat irandom_range(10, 20)
			instance_create(x, y, obj_debris);
	}
	scr_sfx(sfx_hardland, 0)
	global.noiselevel++;
	obj_camera.shake = 20;
	global.ring += 5;
	scr_sfx(sfx_ring, 0);
	instance_destroy();
}
if other.state != 3 && other.powerup != 1 && !other.flamed
{
	with other
		GMScript_hurttails();
	if object_index = obj_evilwhiteball or object_index = obj_groundpillar
	{
		repeat irandom_range(10, 20)
			instance_create(x, y, obj_debris);
	}
	scr_sfx(sfx_hardland, 0)
	global.noiselevel++;
	obj_camera.shake = 20;
	if global.ring > 0
		global.ring--;
	instance_destroy();
}
