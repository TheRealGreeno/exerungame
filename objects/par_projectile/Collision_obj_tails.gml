if other.state = 1 or other.state = 2 or other.powerup = 1
{
	instance_create(x, y - 12, obj_boom);
	randomize();
	with instance_create(x, y - 12, obj_debris)
		sprite_index = choose(spr_flicky1, spr_flicky2, spr_flicky3, spr_flicky4);
	instance_destroy();
	other.pspeed += 1;
	other.hsp += 0.4;
	obj_camera.shake = 10;
		global.ring += (global.combo > 0 ? (1 * global.combo) : 1);
	scr_sfx(sfx_ring, 0);
	repeat (global.combo > 0 ? (1 * global.combo) : 1)
	{
		with instance_create(x, y, obj_debris)
		{
			sprite_index = spr_ring;
			image_speed = 0;
			image_index = irandom(3);
		}
	}
	global.combo++;
	global.combotime = 60;
	if other.vsp > 0
		other.vsp = -other.vsp;
}
else if other.state != 3
{
	with other
		GMScript_hurttails();
	instance_create(x, y - 12, obj_boom);
	randomize();
	with instance_create(x, y - 12, obj_debris)
		sprite_index = choose(spr_flicky1, spr_flicky2, spr_flicky3, spr_flicky4);
	obj_camera.shake = 10;
	if global.ring > 0
		global.ring--;
	instance_destroy();
}