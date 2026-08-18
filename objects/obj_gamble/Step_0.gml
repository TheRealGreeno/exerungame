randomize();
if dupecheck < 14
	dupecheck++;
if global.unlockedpalettes[dupecheck, chartounlockto] = paltounlock
{
	paltounlock = irandom_range(1, 14);
	dupecheck = 0;
}
cycle += 0.5;
if global.unlockedpalettes[slot, chartounlockto] != 0
	slot++;