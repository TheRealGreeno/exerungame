function GMScript_exespr()
{
	switch exe
	{
		case "S":
			spr_dash = spr_exe_dash;
			spr_roll = spr_exe_fall;
			spr_defeat = spr_exe_defeat;
			break;
		case "F":
			spr_dash = spr_flowery_dash;
			spr_roll = spr_flowery_intro;
			spr_defeat = spr_flowery_defeat;
			break;
		case "R":
			spr_dash = spr_robotnik_dash;
			spr_roll = spr_robotnik_fall;
			spr_defeat = spr_robotnik_defeat;
			break;
		case "W":
			spr_dash = spr_wario_dash;
			spr_roll = spr_wario_fall;
			spr_defeat = spr_wario_defeat;
			break;
		case "P":
			spr_dash = spr_peppino_dash;
			spr_roll = spr_peppino_fall;
			spr_defeat = spr_peppino_defeat;
			break;
		case "shawn":
			spr_dash = spr_exe_dash;
			spr_roll = spr_exe_roll;
			spr_defeat = spr_exe_intro;
			break;
	}
}