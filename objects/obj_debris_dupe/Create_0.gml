palselect = 1;
randomize()
hsp = irandom_range(-10, 10);
vsp = irandom_range(-10, -5);
image_angle = irandom_range(-360, 360);
grounded = 0;
grav = 0.4;
xscale = 1;
yscale = 1;
livetime = 250;
image_speed = 0;
image_index = irandom_range(0, image_number - 1);
if room = labyrinth
	sprite_index = spr_labyrinthdebris;