if char != prevchar
{
	randomize();
	spr_char = charsprites[char, irandom_range(0, 2)];
	obj_shopbuy.slot = 1;
	prevchar = char;
}