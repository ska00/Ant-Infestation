/// @desc: spawn a particular ant at some location

function spawn_ant(_ant_name, _x, _y)
{
	var object = asset_get_index("obj_" + _ant_name);
	
	instance_create_layer(_x, _y, "Instances", object);
}