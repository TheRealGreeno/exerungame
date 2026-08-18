y += vsp;
vsp += grav;
if y > room_height + 200
{
	if !instance_exists(obj_gamble)
		instance_create(x, y, obj_deathreset);
	instance_destroy();
}