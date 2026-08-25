target = obj_tails;
hsp = 0;
image_speed = 0;
sprite_index = target.sprite_index;
image_index = target.image_index;
image_xscale = target.xscale;
image_yscale = target.yscale;
image_alpha = 1;
if target.char = "T"
	image_blend = c_orange;
else if target.char = "K"
	image_blend = c_red;
else
	image_blend = c_blue;
