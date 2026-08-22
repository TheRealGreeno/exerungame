if image_index = 0
{
	other.vsp = -other.vsp
	other.hsp =-5;
	other.pspeed -= 5;
	image_index = 1;
	scr_sfx(sfx_casinobumper, 0);
	alarm[0] = 30;
}