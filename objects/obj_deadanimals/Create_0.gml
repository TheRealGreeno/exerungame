randomize()
if !obj_exe.flowery
	sprite_index = choose(spr_flicky1, spr_flicky2, spr_flicky3, spr_flicky4);
else
	sprite_index = spr_flowerybush
if room = youcantrun && !obj_exe.flowery
	sprite_index = spr_phantomexe;
y = sprite_index = spr_flicky2 ? 56 : 210;
if instance_exists(obj_tails)
	depth = obj_tails.depth - 1;