if !obj_tails.dead
{
	if obj_tails.pspeed <= obj_tails.maxspeed / 1.5
		global.gamescore++;
	else
		global.gamescore += 2;
}
alarm[1] = ((obj_tails.maxspeed + 5) - round(obj_tails.pspeed));