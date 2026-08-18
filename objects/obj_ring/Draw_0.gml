pal_swap_set(palette_rings, (100 - global.seconds) * 0.01, 0);
draw_self();
shader_reset();