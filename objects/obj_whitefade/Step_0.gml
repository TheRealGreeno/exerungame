if fadealpha < 1 && !fadeout
	fadealpha += 0.1;
else if fadealpha > 0
	fadealpha -= 0.1;

if fadealpha >= 1 && !fadeout
{
	if !obj_exe.flowery
	{
		layer_set_visible("Effect_1", true);
		layer_set_visible("Effect_2", true);
		layer_set_visible("Effect_3", true);
		layer_set_visible("Effect_4", false);
		layer_set_visible("Effect_5", true);
		obj_world.burning = 1;
	}
	else
	{
		layer_set_visible("Effect_6", true);
		layer_set_visible("Effect_7", true);
		layer_set_visible("Effect_4", false);
		layer_set_visible("Effect_5", true);
	}
	fadeout = 1;
}

if fadealpha = 0 && fadeout
	instance_destroy();