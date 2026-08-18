randomize();
iconvsp = 0;
contained = 0;
paltounlock = irandom_range(1, 14)
chartounlockto = irandom_range(0, 3)
slot = 1;
dupecheck = 0;
cycle = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
if chartounlockto = 0
	spr_palette = palette_tails;
else if chartounlockto = 1
	spr_palette = palette_knuckles;
else if chartounlockto = 2
	spr_palette = palette_sonic;
else
	spr_palette = palette_exe;