visible = obj_tails.shield;
x = obj_tails.x - 2;
y = obj_tails.y + 10;
overlayf += 0.5;
if active
	activef += 0.5;
if obj_tails.shield != 1
	shieldf += 0.5;
if activef > sprite_get_number(activespr) - 1
	activef = 0;
switch obj_tails.shield
{
	case 0:
		obj_tails.shieldspr = spr_null;
		image_speed = 0.5;
		activespr = spr_null;
		overlay = spr_null;
		break;
	case 1:
		obj_tails.shieldspr = spr_bubble;
		image_speed = 0;
		activespr = spr_bubble;
		overlay = spr_bubbleshield;
		break;
	case 2:
		obj_tails.shieldspr = spr_null;
		image_speed = 0.5;
		activespr = spr_thunder;
		overlay = spr_thundershield;
		break;
	case 3:
		obj_tails.shieldspr = spr_flameshield1;
		image_speed = 0.5;
		overlay = spr_flameshield2;
		activespr = spr_flame;
		break;
}

if floor(activef) = sprite_get_number(activespr) - 1
	active = 0;
if shieldf != 0 && obj_tails.shield = 1
	shieldf = 0;