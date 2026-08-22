if other.powerup = 1 or other.flamed
{
	if object_index = obj_evilwhiteball or object_index = obj_groundpillar
	{
		repeat irandom_range(10, 20)
			instance_create(x, y, obj_debris);
	}
	scr_sfx(sfx_hardland, 0)
	obj_camera.shake = 20;
	global.ring += 5;
	scr_sfx(sfx_ring, 0);
	repeat 5
	{
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_ring;
			image_speed = 0;
			image_index = irandom(3);
		}
	}
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
	obj_camera.shake = 20;
	if global.ring > 0
		global.ring--;
	instance_destroy();
}
