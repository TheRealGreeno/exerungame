if other.state = 1 or other.state = 2 or other.powerup = 1
{
	instance_create(x, y - 12, obj_boom);
	instance_destroy();
	other.pspeed += 1;
	other.hsp += 0.4;
}
else if other.state != 3
{
	with other
		GMScript_hurttails();
	instance_create(x, y - 12, obj_boom);
	instance_destroy();
}