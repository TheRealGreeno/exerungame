GMScript_input()
if x <= 224
	x += hsp;
else
	x = 224;
if x < 0
	x = 0
y += vsp;
if y <= 206
	vsp += grav;
else
	vsp = 0;

tailrot = (-vsp) * 10;
tailrot = clamp(tailrot, -90, 90);
visible = !dead;
if global.combotime > 0
	global.combotime -= 0.1;
else
	global.combo = 0
pspeed = clamp(pspeed, 2, maxspeed);
if dead
{
	pspeed = 0;
	state = 3;
	hsp = 0;
	vsp = 0;
}
switch state
{
	case 0:
		GMScript_tailsnormal();
		break;
	case 1:
		GMScript_tailsjump();
		break;
	case 2:
		GMScript_tailsroll();
		break;
	case 3:
		GMScript_tailshurt();
		break;
}

if state = 1 || state = 2
	mask_index = mask_tailsroll;
else
	mask_index = mask_tails;

if vsp < 0 && !keyjump && state = 1
	vsp /= 2;
if global.gamescore > global.highscore && !highscorebeat
{
	scr_sfx(sfx_highscorebeat, 0);
	highscorebeat = 1;
}
ini_open("gameData.ini");
ini_write_real("game", "ring", global.ring);
ini_close();
if global.gamescore >= global.highscore / 2 && !halfscore
{
	scr_sfx(sfx_halfscore);
	halfscore = 1;
}
if global.debug = 1
{
	if keyboard_check_pressed(ord("1"))
		global.noiselevel = 5;
	if keyboard_check_pressed(ord("2"))
		room_goto_next();
	if keyboard_check_pressed(ord("4"))
	{
		with instance_create(x, y, obj_monitor)
			contained = 5;
	}
	if keyboard_check_pressed(ord("5"))
	{
		with instance_create(x, y, obj_monitor)
			contained = 1;
	}
	if keyboard_check_pressed(ord("6"))
		global.lifes++;
	if keyboard_check_pressed(ord("7"))
		pspeed = 99;
}
if powerup = 1
	instance_create(x + irandom_range(-32, 32), y + irandom_range(-48, 16), obj_invincibilityeffect)
if (state = 1 or state = 2) && char = "T"
	tails = 1;
else
	tails = 0;
if noiseleveldownbuff > 0 && global.noiselevel > 0
	noiseleveldownbuff--
else if global.noiselevel > 0
{
	global.noiselevel--
	noiseleveldownbuff = 450;
}
if pspeed > maxspeed / 1.5
	instance_create(x, y, obj_afterimages);