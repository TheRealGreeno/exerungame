function GMScript_tailsjump()
{
	sprite_index = spr_tails_roll;
	tails = 1;
	if shield = 1 && !bubbled && keyjump2
	{
		vsp = 8;
		bubbled = 1;
	}
	if shield = 2 && !thundered && keyjump2
	{
		vsp = -6;
		thundered = 1;
		scr_sfx(sfx_thundershielduse, 0);
		repeat irandom_range(5, 10)
			instance_create(obj_shield.x + irandom_range(-10, 10), obj_shield.y + irandom_range(-10, 10), obj_sparks);
		obj_shield.active = 1;
	}
	if shield = 3 && !flamed && keyjump2
	{
		hsp += 4;
		if pspeed < 21
			pspeed += 4;
		flamed = 1;
		scr_sfx(sfx_flameshielduse, 0);
		obj_shield.active = 1;
	}
	if y > 206
	{
		if !bubbled
		{
			state = 0
			thundered = 0;
			flamed = 0;
			y = 206
		}
		else
		{
			vsp -= 10;
			obj_shield.active = 1;
			obj_shield.activef = 0;
			bubbled = 0;
			scr_sfx(sfx_bubbleshielduse, 0);
		}
	}
}