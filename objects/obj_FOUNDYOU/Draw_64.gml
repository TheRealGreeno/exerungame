randomize();
if msg = 0
{
	draw_set_font(fnt_foundyou);
	draw_set_color(c_red);
	draw_text(irandom(480), irandom(270), "F0UND YOU");
	draw_text(irandom(480), irandom(270), "F0UND YOU");
	draw_text(irandom(480), irandom(270), "F0UND YOU");
	draw_text(irandom(480), irandom(270), "F0UND YOU");
	draw_set_font(fnt_foundyoubig);
	draw_text(240 + irandom_range(-5, 5), 135 + irandom_range(-5, 5), "F0UND YOU");
}
if instance_exists(obj_whitefade)
	faded = 1
else if msg = 1
{
	draw_set_font(fnt_foundyou);
	draw_set_color(c_red);
	draw_text(irandom(480), irandom(270), "READY 0R N0T");
	draw_text(irandom(480), irandom(270), "READY 0R N0T");
	draw_text(irandom(480), irandom(270), "READY 0R N0T");
	draw_text(irandom(480), irandom(270), "READY 0R N0T");
	draw_set_font(fnt_foundyoubig);
	if !faded
		draw_text(240 + irandom_range(-5, 5), 135 + irandom_range(-5, 5), "READY 0R N0T");
	else
		draw_text(240 + irandom_range(-5, 5), 135 + irandom_range(-5, 5), "HERE I C0ME");
}
else
{
	draw_set_font(fnt_foundyou);
	draw_set_color(c_red);
	draw_text(irandom(480), irandom(270), "T00 SL0W");
	draw_text(irandom(480), irandom(270), "T00 SL0W");
	draw_text(irandom(480), irandom(270), "T00 SL0W");
	draw_text(irandom(480), irandom(270), "T00 SL0W");
	draw_set_font(fnt_foundyoubig);
	draw_text(240 + irandom_range(-5, 5), 135 + irandom_range(-5, 5), "YOU ARE T00 SL0W");
}
draw_set_color(c_white);