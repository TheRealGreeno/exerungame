xscale = lerp(xscale, 1, 0.1);
yscale = lerp(yscale, 1, 0.1);
if obj_exe.sprite_index = obj_exe.spr_dash && alpha < 1
	alpha += 0.1
sprite_index = spr_topspeed;
if char = "T"
	charnum = 0;
else if char = "K"
	charnum = 1;
else
	charnum = 2;