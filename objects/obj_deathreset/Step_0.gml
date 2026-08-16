drawx += 25;
if drawx >= 0 && !roomreset
{
	room_restart();
	roomreset = 1;
}
if drawx >= 480
	instance_destroy();