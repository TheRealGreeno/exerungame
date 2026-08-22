if other.state = 2 or other.powerup = 1 or other.char = "K"
{
	instance_destroy();
	with instance_create(x, y, obj_debris)
		sprite_index = spr_rat_dead;
	scr_sfx(sfx_hardland, 0);
	obj_camera.shake = 20;
}
if other.state != 2 && other.state != 3 && other.powerup != 1 && other.char != "K"
{
	with other
		GMScript_hurttails();
	instance_destroy();
	with instance_create(x, y, obj_debris)
		sprite_index = spr_rat_dead;
	scr_sfx(sfx_hardland, 0);
	obj_camera.shake = 20;
}