if room = title
{
	if !global.palettemode
	{
		if exe = "S"
			exe = "R";
		else if exe = "R"
			exe = "F";
		else if exe = "F"
			exe = "S";
		global.exe = exe;
		GMScript_exespr();
		sprite_index = spr_dash;
		ini_open("gameData.ini");
		ini_write_string("exeinfo", "exechar", global.exe);
		ini_close();
		ini_open("gameData.ini");
		if exe != "S"
			palselect = 0;
		else
			palselect = ini_read_real("exeinfo", "exepalette", 0);
		ini_close();
		scr_sfx(sfx_halfscore, 0);
		xscale = 2;
		yscale = 0.5;
	}
	else
	{
		if exe = "S"
		{
			if paltoselect < 14
				paltoselect++;
			else
				paltoselect = 0;
			global.exepalette = global.unlockedpalettes[paltoselect, 3];
			palselect = global.exepalette;
			if paltoselect != 0 && palselect = 0
				paltoselect = 0;
			ini_open("gameData.ini");
			ini_write_real("exeinfo", "exepalette", global.exepalette);
			ini_close();
			xscale = 2;
			yscale = 0.5;
			scr_sfx(sfx_halfscore, 0);
		}
		else
			scr_sfx(sfx_hurt, 0);
	}
}