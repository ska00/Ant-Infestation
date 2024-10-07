/// @description

depth = -100;

padding = 5;

y = 0 + padding;


//cooldown = 3 * game_get_speed(gamespeed_fps); // seconds
//time = 0;

STATES = 
{
	"unactive": 0,
	"active": 1,
	"depleted" : 2
}

// start unactive until it is clicked on.
state = STATES.unactive

object_name = object_get_name(object_index)

weapon = global.WEAPONS[$object_name]

function stop_weapon()
{
	instance_destroy(weapon.object);
		
	state = STATES.unactive
}