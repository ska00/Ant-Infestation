/// @description Base stats


var object_name = object_get_name(object_index)
ant = global.ANTS[$object_name]

dir = -1;

move_speed = ant.move_speed * dir;

xorigin = x;

image_xscale = global.ANTSCALE * dir;
image_yscale = global.ANTSCALE;

STATES = {
	"idle": 0,
	"squashed": 1
}

state = STATES.idle

