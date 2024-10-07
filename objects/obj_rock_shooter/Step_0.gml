/// @description

// To avoid throwing rocks when the boot comes down.
if mouse_check_button_pressed(mb_left) and instance_exists(obj_boot)
{
	if obj_boot.state == obj_boot.STATES.active exit;
}

if mouse_check_button_pressed(mb_left) and not started
{
	if global.WEAPONACTIVE != noone exit;
	
	x_final = mouse_x;
	if mouse_x < 5 x_final = 5;
	
	y_initial = x_final / 8.73;
	time_final = x_final / horz_velocity;
	vert_velocity_initial = (y_final - y_initial + 0.5*gravity*sqr(time_final))/time_final;

	instance_create_layer(0, y_initial, "Instances", obj_rock)

	started = true;
	exit;
}

if not started exit;

time += time_final / time_steps;

//vert_velocity = vert_velocity_initial - gravity*time;
x_rock = horz_velocity*time;
y_rock = y_initial + vert_velocity_initial*time + 0.5*gravity*sqr(time);

obj_rock.x = x_rock;
obj_rock.y = y_rock;

//print("Object x ", obj_rock.x);
//print("Object y ", obj_rock.y);


if obj_rock.x > room_width or obj_rock.y == 143
{
	instance_destroy(obj_rock);
	started = false;
	
	time = 0;
}

