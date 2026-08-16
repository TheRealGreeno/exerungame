if instance_exists(obj_tails)
	x += (-obj_tails.pspeed) * 0.5;
else
	x += (-obj_exe.espeed) * 0.5;
if x < -10
	instance_destroy();