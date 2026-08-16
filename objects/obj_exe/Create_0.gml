palselect = 7;
test = 0;
espeed = 0;
hsp = 0;
vsp = 0;
grav = 0.4;
landed = 0;
gotime = 0;
randomize();
jokevoiceline = irandom_range(1, 100);
flowery = irandom_range(-50, 1);
pal_swap_init_system(shd_pal_swapper, shd_pal_html_sprite, shd_pal_html_surface);
if instance_exists(obj_tails)
	depth = obj_tails.depth - 1;