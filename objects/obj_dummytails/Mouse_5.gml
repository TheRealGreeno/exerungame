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
textfade = 0;
alarm[0] = 60;
scr_sfx(sfx_halfscore, 0);