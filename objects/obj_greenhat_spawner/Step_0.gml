/// @description Spawn green hats

time += 1;

if time > interval
{
	instance_create_layer(x, y, "Instances", obj_greenhat)
	
	global.ANTCOUNT[$"greenhat"] += 1;
	
	time = 0;
	interval = random_range(1, 3) * gamespeed;
	
}