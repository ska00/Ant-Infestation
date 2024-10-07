/// @description

switch state
{
	case STATES.idle:
		x = mouse_x;
		y = mouse_y;

		if mouse_y > yground y = yground
	break;
	
	case STATES.dropping:
		if y < yground
		{
			y += (yground - y) * sin(radians)
			radians += 0.1;
		}
		else
		{
			state = STATES.active
			weapon_used()
		}
	
	break;
	
	case STATES.active:
		if weapon_active
		{
			weapon_active = false;
			with obj_button weapon.used = false;
		}
		print("in active state");
	break;
}

//print("drop speed:", drop_speed);
