/// @description 

depth = -1000;
y = -sprite_height + 20;
x = mouse_x;

ymax = 120 + y;
yorigin =  -sprite_height + 20;

left_pressed = false;

stomping_speed = 5;
leaving_speed = 3;

load_time = 0.2 * game_get_speed(gamespeed_fps); // seconds
time = 0;

STATES = {
	"idle": 0,
	"active": 1,
	"done": 2,
	"loading": 3
}

state = STATES.loading