if other.powerup = 1
{
	repeat irandom_range(5, 10)
		instance_create(x, y, obj_debris);
	scr_sfx(sfx_hardland, 0)
	instance_destroy();
}
if other.state != 3 && other.powerup != 1
{
	with other
		GMScript_hurttails();
	repeat irandom_range(5, 10)
		instance_create(x, y, obj_debris);
	scr_sfx(sfx_hardland, 0)
	instance_destroy();
}
