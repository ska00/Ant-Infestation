/// @description 

depth = 1;

xorigin = x;

// Random direction
dir = choose(-1, 1)

xmax = 40;
yscale = global.ANTSCALE;
xscale = global.ANTSCALE;
move_speed = 1;


STATES = {
	"idle": 0,
	"squashed": 1
}

state = STATES.idle