/// @description 

image_alpha = 1;

duration = global.WEAPONEFFECTDUR.sugar;

time_counter = 0;
time = duration * game_get_speed(gamespeed_fps);

ants_tranced = []

var ant_count = random_range(1, 8)

for (var i = 1; i < ant_count; i++)
{
	
	var ant = instance_nth_nearest(x, y, obj_greenhat, i);
	
	if ant == noone exit;

	with ant 
	{
		state = STATES.tranced
	}
	
	array_push(ants_tranced, ant)
	
}