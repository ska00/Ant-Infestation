/// @description 

time += 1;

if time > off_time
{
	instance_create_layer(x, y, "Instances", ant)
	
	//global.ANTCOUNT[$"greenhat"] += 1;
	
	time = 0;
	off_time = random_range(min_off_time, max_off_time) * gamespeed;
	
}