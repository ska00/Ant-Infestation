/// @description 

depth = 1;

// Random direction
dir = choose(-1, 1);
dir = -1;

move_speed = 0.8 * dir;

xorigin = x;

image_xscale = global.ANTSCALE * dir;
image_yscale = global.ANTSCALE;
xscale = global.ANTSCALE * dir;
yscale = global.ANTSCALE;


STATES = {
	"idle": 0,
	"squashed": 1
}

state = STATES.idle