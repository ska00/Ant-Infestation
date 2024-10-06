/// @description Make ant move

switch state
{
	case STATES.idle:
		x += move_speed

		if x > xorigin + xmax
		{
			move_speed = - move_speed
		}

		if x < xorigin - xmax
		{
			move_speed = - move_speed
		}
	break;
	
	case STATES.squashed:
		yscale -= 0.05;
		if yscale == 0 instance_destroy();
	break;
}

