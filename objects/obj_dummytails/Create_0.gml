char = !variable_global_exists("char") ? "T" : global.char;
GMScript_characterspr();
palselect = !variable_global_exists("palselect") ? 0 : global.palselect;
ini_open("gameData.ini");
global.palselect = ini_read_real("playerinfo", "palette", 0);
global.char = ini_read_string("playerinfo", "char", "T");
global.ring = ini_read_real("game", "ring", 0);
ini_close();
global.palettemode = 0;
char = global.char;
GMScript_characterspr();
palselect = global.palselect;
paltoselect = global.palselect;
charnum = 0;
ini_open("gameData.ini");
if ini_read_string("playerinfo", "unlockedpalettes", 0) = 0
{
	randomize();
	global.unlockedpalettes = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]];
	ini_write_string("playerinfo", "unlockedpalettes", global.unlockedpalettes);
}
else
{
	var _unlockedpal = ini_read_string("playerinfo", "unlockedpalettes", [[0, 0, 0, 0], [1, 1, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 0, 0, 0]]);
	global.unlockedpalettes = json_parse(_unlockedpal);
}
ini_close();
charname = ["TAILS", "KNUCKLES", "SONIC"]
palettename = [["ALAN", "DAVE", "PAUL"], ["CLASSIC SHOES", "BLUE SOCKS", "BLUE SHOES"], ["LACK O' COLOR THEORY", "RED KNUCKLES", "IMITATION SHOES"], ["SEE HE'S FINE!", "RED SOCKS", "ORANGE SHOES"], ["SUPER SHOES", "NPC KNUX", "THE HEDGEHOG"], ["SIMPLE AND SLEEK", "CRIMSON KNUX", "GREEN SHOES"], ["FEELIN' BLUE", "EVAD", "HELLHOG"], ["NALA", "SILVER KNUCKLE", "SILVER SONIC"], ["DARK FOX", "KNUX WITH JAUNDICE", "JAUNDICE SONIC"], ["THE BROWN FOX JUMPED\nOVER THE LAZY EXE", "PISSKLES", "LABYRINTH BLUES"], ["PISS TAILS", "MARIJKNUCKLES", "MARIJONIC"], ["BLOODY FOX", "GRUCKLES", "SUPER SONIC"], ["SHAMBLING FOX", "BLUCKLES", "HIS BEST FRIEND"], ["FIREFOX", "JA     ORANGE", "HIS BEST ENEMY"], ["POLYESTER TAILS", "POLYESTER KNUCKLES", "POLYESTER SONIC"]]
xscale = 1;
yscale = 1;
alpha = 0;
