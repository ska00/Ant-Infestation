/// @description Make ant move

switch state
{
	case STATES.idle:
		x += move_speed

		if x > room_width or x < global.OUTOFBOUNDS 
		{
			instance_destroy();
			//global.ANTCOUNT[$"greenhat"] -= 1;
		}
	break;
	
	case STATES.squashed:
		yscale -= 0.05;
		image_yscale -= 0.05;
		if image_yscale == 0 instance_destroy();
	break;
}

