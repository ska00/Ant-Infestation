/// @description 
x = mouse_x;
y = mouse_y;

radians = 0.1;
yground = 143;

left_pressed = false;
weapon_active = false;

time = 0;
effect_time = 3 * game_get_speed(gamespeed_fps); // seconds

obj_button = asset_get_index(object_get_name(object_index) + "_button")


STATES = {
	"idle": 0, 
	"active": 1,
	"done": 2,
	"dropping": 3
}

state = STATES.idle

function weapon_used()
{
	with obj_button
	{
		weapon.used = true;
		
		event_user(0);
	}
	weapon_active = true;
}