/// @description

if mouse_check_button_pressed(mb_left) and state == STATES.idle
{
	state = STATES.active;
	
	with obj_boot_button
	{
		weapon.used = true;
		
		event_user(0);
	}
	//global.WEAPONACTIVE = noone
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
			audio_play_sound(snd_boot, global.SOUNDPRIORITY, false);
			state = STATES.done;
		}

	break;
	
	case STATES.done:
		y -= leaving_speed
		if y < -sprite_height	// out of screen
		{
			instance_destroy()
			global.WEAPONS.obj_boot_button.used = false;
		}
		
	break;
}





//print("Mouse x: ", mouse_x);