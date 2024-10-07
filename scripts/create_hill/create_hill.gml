// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_hill(_x)
{
	return instance_create_layer(_x, 143, "Instances", obj_anthill)
}