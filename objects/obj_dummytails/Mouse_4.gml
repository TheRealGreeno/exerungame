if !global.palettemode
{
	if char = "T"
		char = "K";
	else if char = "K"
		char = "S";
	else if char = "S"
		char = "T";
	GMScript_characterspr();
	global.char = char;
	global.palselect = palselect;
	ini_open("gameData.ini");
	ini_write_string("playerinfo", "char", global.char);
	ini_close();
	ini_open("gameData.ini");
	ini_write_real("playerinfo", "palette", global.palselect);
	ini_close();
	scr_sfx(sfx_halfscore, 0);
	xscale = 2;
	yscale = 0.5;
	textfade = 0;
	alarm[0] = 60;
}
else
{
	if paltoselect < 14
	paltoselect++;
else
	paltoselect = 0;
	global.palselect = global.unlockedpalettes[paltoselect, charnum];
	palselect = global.palselect;
	if paltoselect != 0 && palselect = 0
		paltoselect = 0;
	ini_open("gameData.ini");
	ini_write_real("playerinfo", "palette", global.palselect);
	ini_close();
	xscale = 2;
	yscale = 0.5;
	scr_sfx(sfx_halfscore, 0);
	textfade = 0;
	alarm[1] = 60;
}