if !active
{
	depth = obj_tails.depth - 1
	draw_sprite(overlay, overlayf, x, y);
}
else
	draw_sprite(activespr, activef, x, y);