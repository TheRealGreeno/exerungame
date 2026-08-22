if other.state = 1 or other.state = 2
{
	instance_create(x, y - 12, obj_boom);
	with instance_create(x, y, obj_debris)
	{
		sprite_index = spr_monitor;
		image_index = 1;
	}
	instance_destroy();
	obj_camera.shake = 10;
	if obj_tails.vsp > 0
		obj_tails.vsp = -obj_tails.vsp;
	if contained <= 2 && contained > 0
	{
		other.powerup = contained;
		other.alarm[1] = 2000;
	}
	else if contained > 0 && contained < 6
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
	else if contained > 0
		global.lifes++;
	else
	{
		global.ring += 10;
		scr_sfx(sfx_ring, 0)
		repeat 10
		{
			with instance_create(x, y, obj_debris)
			{
				sprite_index = spr_ring;
				image_speed = 0;
				image_index = irandom(3);
			}
		}
	}
		
	image_index = 1;
}