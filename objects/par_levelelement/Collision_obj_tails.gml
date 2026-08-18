if other.powerup = 1 or other.flamed
{
	repeat irandom_range(5, 10)
		instance_create(x, y, obj_debris);
	scr_sfx(sfx_hardland, 0)
	obj_camera.shake = 20;
	global.ring += 5;
	scr_sfx(sfx_ring, 0);
	instance_destroy();
}
if other.state != 3 && other.powerup != 1 && !other.flamed
{
	with other
		GMScript_hurttails();
	repeat irandom_range(5, 10)
		instance_create(x, y, obj_debris);
	scr_sfx(sfx_hardland, 0)
	obj_camera.shake = 20;
	if global.ring > 0
		global.ring--;
	instance_destroy();
}
