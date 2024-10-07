/// @description Check for trigger

if state = STATES.depleted
{
	exit;
}

if weapon.used
{
	state = STATES.unactive; 
	exit;
}

//if state == STATES.active global.WEAPONACTIVE = object_index;

if keyboard_check_pressed(ord(weapon.trigger))
{
	if state == STATES.unactive		// only if unactive
	{
		if instance_exists(weapon.object) exit; // ignore input if 
		if global.WEAPONACTIVE == object_index exit; // if already active ignore
		else
		{
			with global.WEAPONACTIVE stop_weapon();
		}
		
		instance_create_layer(0, 0, "Instances", weapon.object);
		state = STATES.active
		
		global.WEAPONACTIVE = object_index;
		
	}
	else if state == STATES.active	
	{
		//print("Deactivate")
		stop_weapon();
		global.WEAPONACTIVE = noone

	}
}

//if state == STATES.active and not weapon.used
//{
//	state = STATES.unactive
//}
