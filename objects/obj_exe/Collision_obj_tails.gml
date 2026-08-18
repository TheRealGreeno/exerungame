global.lifes = 0;
obj_tails.shield = 0;
if !other.dead
{
	with other
	{
		GMScript_hurttails();
	}
}