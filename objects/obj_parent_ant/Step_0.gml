/// @description ant moves

switch state
{
	case STATES.idle:
		x += move_speed

		if x > room_width or x < global.OUTOFBOUNDS 
		{
			instance_destroy();
			
		}
	break;
	
	case STATES.squashed:
		image_yscale -= 0.05;
		if image_yscale == 0 instance_destroy();
	break;
}

