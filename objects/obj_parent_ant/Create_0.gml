/// @description Base stats


var object_name = object_get_name(object_index)
ant = global.ANTS[$object_name]

dir = -1;

move_speed = ant.move_speed * dir + random_range(-0.1, 0.1);

hp = ant.health_points

xorigin = x;

image_xscale = global.ANTSCALE * dir;
image_yscale = global.ANTSCALE;

STATES = {
	"idle": 0,
	"squashed": 1,
	"tranced": 2,
	"gameover": 3
}

state = STATES.idle

//
sugar_distance = random_range(1, 20);


audio_play_sound(snd_antspawning, global.SOUNDPRIORITY, false, 0.3);