/// @description decide how to progress level.

time_done = 0;
time_passed = 0;

//var ant_hill_tmp = instance_find(obj_anthill, 0)

ant_hills = [instance_find(obj_anthill, 0)]
spawners = []
spawner = -1;

function delete_ant_hill(_index)
{
	instance_destroy(ant_hills[_index])
	array_delete(ant_hills, _index, 1)
	instance_destroy(spawners[_index])
	array_delete(spawners, _index, 1)
}

function end_action()
{
	time_done = time_passed;
}
