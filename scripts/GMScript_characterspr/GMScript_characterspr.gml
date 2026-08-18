function GMScript_characterspr()
{
	switch char
	{
		case "T":
			spr_walk = spr_tails_walk;
			spr_dash = spr_tails_dash;
			spr_topspeed = spr_tails_topspeed;
			spr_roll = spr_tails_roll;
			spr_hurt = spr_tails_hurt;
			spr_dead = spr_tails_dead;
			spr_palette = palette_tails;
			palselect = 0;
			maxspeed = 20;
			jumpheight = 8;
			break;
		case "S":
			spr_walk = spr_sonic_walk;
			spr_dash = spr_sonic_dash;
			spr_topspeed = spr_sonic_topspeed;
			spr_roll = spr_sonic_roll;
			spr_hurt = spr_sonic_hurt;
			spr_dead = spr_sonic_dead;
			spr_palette = palette_sonic;
			palselect = 0;
			maxspeed = 30;
			jumpheight = 8;
			break;
		case "K":
			spr_walk = spr_knuckles_walk;
			spr_dash = spr_knuckles_dash;
			spr_topspeed = spr_knuckles_dash;
			spr_roll = spr_knuckles_roll;
			spr_hurt = spr_knuckles_hurt;
			spr_dead = spr_knuckles_dead;
			spr_palette = palette_knuckles;
			palselect = 0;
			maxspeed = 20;
			jumpheight = 7;
			break;		
	}
}