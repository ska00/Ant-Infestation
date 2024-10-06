/// @description

if mouse_check_button_pressed(mb_left) and state == STATES.idle
{
	state = STATES.active;
}

if y < -sprite_height	// out of screen
{
	instance_destroy()
}

switch state
{
	case STATES.loading:
	
		time += 1;
		if time == load_time state = STATES.idle;
		x = mouse_x
		
	break;
	
	case STATES.idle:
	
		x = mouse_x
		
	break;
	
	case STATES.active:
		
		y += stomping_speed
		
		if y > ymax
		{
			state = STATES.done;
		}

	break;
	
	case STATES.done:
		y -= leaving_speed
		
	break;
}





//print("Mouse x: ", mouse_x);