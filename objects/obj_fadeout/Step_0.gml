_x += 30;
if (_x == 0)
{
	if roomgo = undefined
		room_goto_next();
	else
		room_goto(roomgo);
}
if (_x >= 480)
    instance_destroy();
