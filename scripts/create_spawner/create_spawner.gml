/// @desc:
// @param _x
// @param _y
// @param _ant: The ant to be spawned
// @param off_time: a list that has min time off and max time off
function create_spawner(_x, _ant, off_time)
{
	var vars = {min_off_time: off_time[0], max_off_time: off_time[1], ant : _ant}
	return instance_create_layer(_x, 143, "Instances", obj_spawner, vars)
}