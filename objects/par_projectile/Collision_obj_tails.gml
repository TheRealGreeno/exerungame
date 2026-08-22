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
	if global.combo > 0
		global.ring += (1 * global.combo);
	else
		global.ring++;
	scr_sfx(sfx_ring, 0);
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