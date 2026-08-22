if room = title
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
		textfade = 0;
		alarm[1] = 60;
	}
	else
		scr_sfx(sfx_hurt, 0);
}