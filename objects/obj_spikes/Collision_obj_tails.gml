if other.state = 2 or other.powerup = 1
{
	instance_create(x, y - 12, obj_boom);
	instance_destroy();
}
else if other.state != 3 && other.powerup != 1
{
	with other
		GMScript_hurttails();
	instance_create(x, y - 12, obj_boom);
	instance_destroy();
}