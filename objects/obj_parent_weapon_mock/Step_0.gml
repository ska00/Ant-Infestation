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
		with obj_button weapon.used = false;
		
		var item = asset_get_index(obj_name)
		if instance_exists(item) instance_destroy(item);
		instance_create_layer(x, y, "Instances", item);
		instance_destroy();
	break;
}

//print("drop speed:", drop_speed);
