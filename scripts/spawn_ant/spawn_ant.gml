/// @desc: spawn a particular ant at some location

function spawn_ant(_ant_name, _ant_hill)
{
	var object = asset_get_index("obj_" + _ant_name);
	
	instance_create_layer(_ant_hill.x, _ant_hill.y, "Instances", object);
}