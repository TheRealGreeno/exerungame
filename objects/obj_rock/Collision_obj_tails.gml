if other.state = 2 or other.powerup = 1 or other.char = "K"
{
	instance_destroy();
	repeat irandom_range(2, 5)
	{
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_rockdebris;
			image_speed = 0;
			image_index = irandom(1);
		}
	}
	global.ring += 5;
	global.noiselevel++;
	scr_sfx(sfx_ring, 0);
	scr_sfx(sfx_hardland, 0);
	obj_camera.shake = 20;
}
if other.state != 2 && other.state != 3 && other.powerup != 1 && other.char != "K"
{
	with other
		GMScript_hurttails();
	instance_destroy();
	repeat irandom_range(2, 5)
	{
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_rockdebris;
			image_speed = 0;
			image_index = irandom(1);
		}
	}
	global.noiselevel++;
	scr_sfx(sfx_hardland, 0);
	obj_camera.shake = 20;
}