if fadealpha < 1 && !fadeout
	fadealpha += 0.1;
else if fadealpha > 0
	fadealpha -= 0.1;

if fadealpha >= 1 && !fadeout
{
	if !obj_exe.flowery
	{
		layer_set_visible("firecolor", true);
		layer_set_visible("heatwavefg", true);
		layer_set_visible("heatwavebg", true);
		layer_set_visible("glow", false);
		layer_set_visible("chaseglow", true);
		if room = chemplant or room = greenhill or room = marble
			obj_world.burning = 1;
	}
	else
	{
		layer_set_visible("chaseglow", true);
		layer_set_visible("flowerycolor", true);
		layer_set_visible("glow", false);
		layer_set_visible("levelfog", false);
		layer_set_visible("flowerypetal", true);
	}
	fadeout = 1;
}

if fadealpha = 0 && fadeout
	instance_destroy();