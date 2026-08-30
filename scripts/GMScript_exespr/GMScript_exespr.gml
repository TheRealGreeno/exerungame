function GMScript_exespr()
{
	switch exe
	{
		case "S":
			spr_walk = spr_exe_walk;
			spr_dash = spr_exe_dash;
			spr_topspeed = spr_exe_topspeed;
			spr_dashprep = spr_exe_dashprep;
			spr_roll = spr_exe_fall;
			spr_defeat = spr_exe_defeat;
			standardexe = 1;
			break;
		case "E":
			spr_walk = spr_exetior_walk;
			spr_dash = spr_exetior_dash;
			spr_topspeed = spr_exetior_dash;
			spr_dashprep = spr_exetior_dashprep;
			spr_roll = spr_exetior_fall;
			spr_defeat = spr_exetior_defeat;
			standardexe = 1;
			break;
		case "F":
			spr_dash = spr_flowery_dash;
			spr_roll = spr_flowery_intro;
			spr_defeat = spr_flowery_defeat;
			standardexe = 0;
			break;
		case "R":
			spr_dash = spr_robotnik_dash;
			spr_roll = spr_robotnik_fall;
			spr_defeat = spr_robotnik_defeat;
			standardexe = 0;
			break;
		case "W":
			spr_dash = spr_wario_dash;
			spr_roll = spr_wario_fall;
			spr_defeat = spr_wario_defeat;
			standardexe = 0;
			break;
		case "P":
			spr_dash = spr_peppino_dash;
			spr_roll = spr_peppino_fall;
			spr_defeat = spr_peppino_defeat;
			standardexe = 0;
			break;
		case "shawn":
			spr_dash = spr_exe_dash;
			spr_roll = spr_exe_roll;
			spr_defeat = spr_exe_intro;
			standardexe = 0;
			break;
	}
}