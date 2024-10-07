/// @desc:
// @param _x
// @param _ant: The ants to be spawned formated [[p: ant_object]]
// @param off_time: a list that has min time off and max time off
function create_spawner_weighted(_x, _ants, off_time)
{
	var vars = {min_off_time: off_time[0], max_off_time: off_time[1], ants : _ants}
	return instance_create_layer(_x, 143, "Instances", obj_spawner_weighted, vars)
}