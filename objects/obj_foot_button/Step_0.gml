/// @description count time left for cooldown.

if state == STATES.off
{
	time += 1;
	
	if time > cooldown
	{
		time = 0;
		state = STATES.on;
	}
}

