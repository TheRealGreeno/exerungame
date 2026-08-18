if os_type = os_android
{
	global.palettemode = !global.palettemode;
	scr_sfx(global.palettemode ? sfx_halfscore : sfx_hurt, 0)
}