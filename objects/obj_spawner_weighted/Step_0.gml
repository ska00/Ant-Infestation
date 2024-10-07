/// @description 

time += 1;

if time > off_time
{
	var p = random(1);
	//var spawned = false;
	var previous_p = 0;

	for (var i = 0; i < ant_count; i++)
	{
		if p <= ants[i][0] + previous_p and p >= previous_p
		{
			instance_create_layer(x, y, "Instances", ants[i][1]);
			//spawned =true;
			break;
		}
		if i > 0 previous_p = ants[i - 1][0]
	}
	
	//if not spawned instance_create_layer(x, y, "Instances", ants[ant_count -1][1]);
	//global.ANTCOUNT[$"greenhat"] += 1;
	
	time = 0;
	off_time = random_range(min_off_time, max_off_time) * gamespeed;
	
	//print("Off time", off_time);
	
}