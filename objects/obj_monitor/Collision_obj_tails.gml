if other.state = 1 or other.state = 2
{
	instance_create(x, y - 12, obj_boom);
	instance_destroy();
	obj_camera.shake = 10;
	if contained <= 2 && contained > 0
	{
		other.powerup = contained;
		other.alarm[1] = 1650;
	}
	else if contained > 0
	{
		other.shield = contained - 2;
		switch other.shield
		{
			case 1:
				scr_sfx(sfx_bubbleshieldequip, 0);
				break;
			case 2:
				scr_sfx(sfx_thundershieldequip, 0);
				break;
			case 3:
				scr_sfx(sfx_flameshieldequip, 0)
				break;
		}
	}
	else
	{
		global.ring += 10;
		scr_sfx(sfx_ring, 0)
	}
		
	image_index = 1;
}