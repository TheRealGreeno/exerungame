randomize()
switch room
{
	case greenhill:
		levelobstacle = obj_rock;
		break;
	case labyrinth:
		levelobstacle = obj_labyrinthspikes;
		break;
	case youcantrun:
		levelobstacle = obj_saw;
		break;
	case hiddenpalace:
		levelobstacle = obj_giantemerald;
		break;
	case chemplant:
		levelobstacle = obj_speedbooster;
		break;
	case casino:
		levelobstacle = obj_casinobumper;
		break;
	case caves:
		levelobstacle = obj_cavesspikes;
		break;
	case flowercastle:
		levelobstacle = obj_fcbaddie;
		break;
	case palmtreeparadise:
		levelobstacle = obj_warioblock;
		break;
	case tower:
		levelobstacle = obj_rat;
		break;
}
obstaclearray = [obj_evilwhiteball, obj_groundpillar, levelobstacle];
if !instance_exists(obj_whitefade)
{
	with instance_create(1080, irandom_range(128, 206), obstaclearray[irandom((array_length(obstaclearray) - 1))])
	{
		depth = obj_tails.depth - 1;
		visible = true;
	}
}
alarm[3] = irandom_range(150 - (obj_tails.pspeed * 2), 250 - (obj_tails.pspeed * 2))