if other.state = 2 or other.powerup = 1
	instance_destroy();
if other.state != 2 && other.state != 3 && other.powerup != 1
{
	with other
		GMScript_hurttails();
	instance_destroy();
}