drawx += 25;
if drawx >= 0 && !roomreset
{
	randomize();
	room_goto(global.levels[irandom_range(0, array_length(global.levels) - 1)]);
	roomreset = 1;
}
if drawx >= 480
	instance_destroy();